function Para(para_elem)
   -- Exit if the the paragraph is not `{{briefs}}`.
   if #para_elem.content == 0 or para_elem.content[1].text ~= "{{briefs}}" then
      return nil
   end

   -- Get all the Markdown briefs under `src/briefs`.
   local handle = io.popen("find src/briefs -type f -name '*.md' | sort -n")
   if not handle then
      return nil
   end

   -- Populate a table of the briefs that we've found.  This strips the
   -- directory and the suffix.
   local files = {}
   for line in handle:lines() do
      if line ~= "" then
         -- Clean prefix and swap extension to .html
         local clean_filename = line:gsub("^src/briefs/", ""):gsub("%.md$", "")
         table.insert(files, clean_filename)
      end
   end
   handle:close()

   -- Exit if no briefs are found.
   if #files == 0 then
      return {}
   end

   -- Return a "Briefs" section and a list of all the briefs.  In Markdown, this
   -- looks like:
   --
   --     ### Briefs
   --     - [newest-brief](link)
   --     - ...
   --     - [oldest-brief](link)
   --
   local list_items = {}
   for _, filename in ipairs(files) do
      local link_path = "/briefs/" .. filename .. ".html"
      local link_text = pandoc.Str(filename)
      local link_element = pandoc.Link({link_text}, link_path)

      table.insert(list_items, { pandoc.Plain({ link_element }) })
   end
   local section_header = pandoc.Header(3, { pandoc.Str("Briefs") })
   local dynamic_list = pandoc.BulletList(list_items)
   return { section_header, dynamic_list }
end
