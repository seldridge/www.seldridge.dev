---
layout: page
title : About
permalink: /about/
---

I'm a 6th year Ph.D candidate at Boston University (graduating Spring/Summer 2016!). I work with Ajay Joshi and the [ICSG research group](https://www.bu.edu/icsg) where I design hardware and software for neural networks. While I specialize in digital design, I've found the most enjoyable projects are team-based and span the entire hardware/OS/software stack like some of our [current work funded by the NSF](http://people.seas.harvard.edu/~apw/asc/).

This webpage serves as a CV, but a [downloadable PDF is provided here](http://people.bu.edu/schuye/files/eldridge-cv.pdf).

I currently collaborate with:

* [Jonathan Appavoo](http://www.cs.bu.edu/~jappavoo/jappavoo.github.com/index.html)
* [Margo Seltzer](http://www.eecs.harvard.edu/~margo/)
* [Steve Homer](http://www.cs.bu.edu/~homer/)
* [Amos Waterland](http://people.seas.harvard.edu/~apw/)
* [Tommy Unger](http://www.cs.bu.edu/~jappavoo/jappavoo.github.com/index.html)
* [Marcia Sahaya-Louis](http://www.bu.edu/icsg/people/)
* [Leila Delshad](http://www.bu.edu/icsg/people/)

--------------------------------------------------------------------------------

### Education

* Ph.D Computer Engineering, Boston University 2016 (expected August)
* BS Electrical Engineering, Boston University 2010

--------------------------------------------------------------------------------

### Research

I explore hardware-based biologically-inspired approaches to computing. My work-in-progress thesis, __Viable Neuromorphic Computing via Neural Network Accelerators__, focuses on the design of neural network accelerator hardware that treats neural network computation as a first-class functional primitive. This includes fixed-topology neural network accelerators as well as dynamically managed, variable-topology ones that can be shared between multiple processes. These dynamic, shared accelerators require supporting hardware and user/supervisor software for _safe_ use. This work is in the process of being open sourced. Specific achievements include:
* Implementation of a fixed-topology neural network accelerator in Verilog
* Implementation of an arbitrary-topology accelerator (modeled in C++ and interfaced with gem5) in SystemVerilog and Chisel
* Design of user and supervisor software libraries in embedded assembly and C that enables safe management of neural network computation
* Integration of supervisor software with the Linux kernel
* Evaluation as a [rocket-chip](https://github.com/ucb-bar/rocket-chip) custom coprocessor on FPGA
* The development of the arbitrary-topology variant, X-FILES/DANA, is available on [GitHub](https://www.github.com/bu-icsg/xfiles-dana)

Prior research involved investigating biologically-inspired methods to computing optical flow. One of these approaches, using variable sized Gabor filters, I implemented in Verilog and tested on a Xilinx Virtex-6 FPGA with a manually interfaced CMOS camera. This involved the design of various pipelined computer arithmetic blocks (a CORDIC unit, a divider, a square root unit, and a linear interpolation unit). This system was controlled over a UART interface by Matlab. These units are available in my public [Verilog repo](https://github.com/seldridge/verilog).

This work was funded by a NASA Space Technology Research Fellowship from 2012--2016, through BU's Center for Computational Neuroscience and Neural Technology (CompNet) in 2011, with a Dean's Fellowship in 2010, and for my collaborators through the NSF.

#### Conference Publications
* S. Eldridge, A. Waterland, M. Seltzer, J. Appavoo, and A. Joshi,
_Towards General-Purpose Neural Network Computing_, Parallel Architectures and Compilation Techniques (PACT) 2015.
[[&nbsp;paper&nbsp;](http://people.bu.edu/schuye/files/pact2015-eldridge-paper.pdf)] [[&nbsp;presentation&nbsp;](http://people.bu.edu/schuye/files/pact2015-eldridge-presentation.pdf)]
* S. Eldridge, F. Raudies, D. Zou, and A. Joshi, _Neural Network-Based Accelerators for Transcendental Function Approximation_, Great Lakes Symposium on VLSI (GLSVLSI) 2014. [[&nbsp;paper&nbsp;](http://people.bu.edu/schuye/files/glsvlsi2014-eldridge.pdf)] [[&nbsp;presentation&nbsp;](http://people.bu.edu/schuye/files/glsvlsi2014-eldridge-presentation.pdf)]

#### Journal Publications
* F. Raudies, S. Eldridge, A. Joshi, and M. Versace,
_Learning to Navigate in a Virtual World Using Optic Flow and Stereo Disparity Signals_,
Artificial Life and Robotics, 19:2 (2014).
[[&nbsp;paper&nbsp;](http://link.springer.com/article/10.1007/s10015-014-0153-1)]

#### Workshop Presentations and Posters
* S. Eldridge, Dong, H., Unger, T., Sahaya Louis, M., Delshad Tehrani, L., Appavoo, J., and Joshi, A.
_X-FILES/DANA: RISC-V Hardware/Software for Neural Networks_,
Fourth RISC-V Workshop 2016.
[[&nbsp;poster&nbsp;](http://people.bu.edu/schuye/files/riscv2016-eldridge-poster.pdf)]
* S. Eldridge, Sahaya Louis, M., Unger, T., Appavoo, J., and Joshi, A.
_Learning-on-chip using Fixed Point Arithmetic for Neural Network Accelerators_,
Design Automation Conference (DAC) 2016.
[[&nbsp;poster&nbsp;](http://people.bu.edu/schuye/files/dac2016-eldridge-poster.pdf)]
* S. Eldridge., T. Unger, M. Sahaya Louis, A. Waterland, M. Seltzer, J. Appavoo, and A. Joshi,
_Neural Networks as Function Primitives: Software/Hardware Support with X-FILES/DANA_,
Boston Area Architecture Workshop (BARC) 2016.
[[&nbsp;paper&nbsp;](http://people.bu.edu/schuye/files/barc2016-eldridge-paper.pdf)] [[&nbsp;presentation&nbsp;](http://people.bu.edu/schuye/files/barc2016-eldridge-presentation.pdf)]
[[&nbsp;poster&nbsp;](http://people.bu.edu/schuye/files/barc2016-eldridge-poster.pdf)]
* S. Eldridge and A. Joshi,
_Exploiting Hidden Layer Modular Redundancy for Fault-Tolerance in Neural Network Accelerators_,
Boston Area Architecture Workshop (BARC) 2015. [[&nbsp;paper&nbsp;](http://people.bu.edu/schuye/files/barc2015-eldridge-paper.pdf)] [[&nbsp;presentation&nbsp;](http://people.bu.edu/schuye/files/barc2015-eldridge-presentation.pdf)]
* J. Appavoo, A. Waterland, K. Zhao, S. Eldridge, A. Joshi, and M. Seltzer,
_Programmable Smart Machines: A Hybrid Neuromorphic Approach to General Purpose Computation_,
Workshop on Neuromorphic Architectures (NeuroArch) at 41st International Symposium on Computer Architecture (ISCA) 2014. [[&nbsp;paper&nbsp;](http://people.bu.edu/schuye/files/appavoo-neuroarch-2014.pdf)]
* S. Eldridge, F. Raudies, and A. Joshi,
_Approximate Computation using Neuralized FPU_,
Brain-Inspired Computing (BIC) Workshop at 40th International Symposium on Computer Architecture (ISCA) 2013. [[&nbsp;paper&nbsp;](http://people.bu.edu/schuye/files/approx-fpu-bic2013.pdf)]

#### Patents and Patent Applications
* V. Gopal, J. D. Guilford, S. Eldridge, G. M. Wolrich, E. Ozturk, W. K. Feghali, _Digest generation_, US Patent Application 13/995,236, 2011. [[&nbsp;patent  application&nbsp;](https://www.google.com/patents/US20130290285)]

--------------------------------------------------------------------------------

### Non-Research Projects

* __Common Verilog__ -- Contains basic Verilog modules with a high probability of reuse [[&nbsp;GitHub&nbsp;](https://github.com/seldridge/verilog)]
* __LaTeX Build Flow__ -- Makefile-driven latexmk LaTeX paper/presentation build flow that cleans up source files to one-sentence-per-line format, converts SVG graphics to EPS, and supports the use of Colorbrewer colors [[&nbsp;GitHub&nbsp;](https://github.com/seldridge/latex-base)]
* __Make Markdown__ -- Makefile-driven build system for converting GitHub-flavored markdown to HTML and a simple way of keeping daily notes (a Captain's Log). This is used in a slightly modified way to create this website. [[&nbsp;GitHub&nbsp;](https://github.com/seldridge/make-markdown)]
* __Ulysses__ -- A Perl script for parsing plain text results from intercollegiate figure skating competitions and computing the totals and statistics for each college. [[&nbsp;GitHub&nbsp;](https://github.com/seldridge/ulysses)]
* __Senior Design Project__ -- Worked on a five person team to build a PCB that interfaced with an Altium FPGA development board. We demonstrated the utility of this board with a real time, color-threshold pan/tilt camera-based object tracking application. My responsibilities included implementation of the complete system on FPGA and a PID control system for a soft-core microprocessor. Unfortunately, no videos exist of the final, working system... [[&nbsp;BU ECE Press&nbsp;](http://www.bu.edu/ece/undergraduate/senior-design-project/senior-design-projects-2010/nanotrack/)]
* __FPGA Frogger__ -- Final project for _Advanced Digital Design in Verilog_ (Fall 2009) that re-implements a Frogger-style game on a Spartan 3 Xilinx FPGA. This included a custom PS/2 keyboard interface in Verilog, sprite storage using block RAMs, and pixel generation using entirely combinational logic (an interesting design choice).  [[&nbsp;video&nbsp;](https://www.youtube.com/watch?v=S2LgUL5JLqQ)]
* __Proportionally Controlled Flashlight Follower__ -- Final project for _Microprocessors_ (Spring 2009) that uses an MSP430 and a breadboard-designed H-bridge to control a motor pulled from a CD drive and, using the difference in intensity from two photodiodes, track a flashlight. [[&nbsp;video&nbsp;](https://www.youtube.com/watch?v=2JNvtdV7HuA)]

--------------------------------------------------------------------------------

### Work Experience
* __NASA Jet Propulsion Lab__, Pasadena, CA (Summer 2013--2015) -- As part of a NASA Space Technology Research Fellowship, I've spent the past three summers at JPL continuing my research into biologically-inspired hardware accelerators for computing applications.
* __Intel Corporation__, Hudson, MA (Summer 2011) -- I worked as a graduate technical intern on a testing and validation team responsible for writing tests and modifying SystemVerilog HDL sources for the memory controller of an Intel server microprocessor.
* __Intel Corporation__, Hudson, MA (Summer 2010) -- As a graduate technical intern with a software research group, I wrote hashing functions in x86 assembly and evaluated them in terms of performance and uniformity.

--------------------------------------------------------------------------------

### Skill Sets
I'm comfortable at all levels of hardware and software development. Many years of this has left me with an "anything is likely possible" attitude as it relates to engineering. I greatly enjoy working with diverse teams on projects that span the complete hardware/software stack.

#### Hardware Design
I'm well versed in __Verilog__ and __SystemVerilog__ as well as a new HDL called [__Chisel__](https://chisel.eecs.berkeley.edu/) that brings the functional and object oriented power of Scala to hardware design.

#### Software Development
I'm comfortable in __C__/__C++__, __Perl__, __Python__, __Scala__, __Matlab__, __Assembly__ (__x86__ and __RISC-V__ specifically), __Bash__ scripting (including writing __Makefiles__ for everything) and __LaTeX__. I also have experience writing __Java__ and __TCL__.

#### Tools
I prefer a command-line driven development environment in __GNU__/__Linux__ with text editing in __Emacs__ (though I know enough __vi__ to get by), but am also comfortable in __Windows__ or __OS X__. I've hacked up [__gem5__](http://www.gem5.org/Main_Page) and have used [__McPAT__](http://www.hpl.hp.com/research/mcpat/) and [__Cacti__](http://www.hpl.hp.com/research/cacti/) for architectural simulations. I enjoy open source development and will opt to do hardware development with [__Icarus Verilog__](http://iverilog.icarus.com/) and [__GTKWave__](http://gtkwave.sourceforge.net/) (and I have a [script](https://github.com/seldridge/hdl-scripts/blob/master/addWavesRecursive.tcl) that helps populate and group signals by module for GTKWave). At BU, we use a __Cadence__ (__RC compiler__/__SoC Encounter__) toolflow for evaluating hardware designs. I've made contributions to this workflow that interfaces this with a Chisel front-end for Verilog generation, post place-and-route VCD generation with __Modelsim__, and VCD-based power estimation with SoC Encounter. I've used __Xilinx ISE__ and __Vivado__ for FPGA development and have had success scripting out the entire Verilog to Bitstream generation in TCL.

--------------------------------------------------------------------------------

### Awards

* __NASA Space Technology Research Fellowship__ -- Four year NASA fellowship from 2012--2016 for work titled _Biologically-inspired Hardware for Land/Aerial Robots_ where I've designed neural network accelerators and evaluated their energy efficiency and capacity for fault-tolerance
* __CELEST/CompNet Award__ -- Awarded at Boston University's 2012 Science Day for work involving the FPGA implementation of a biologically-inspired optical flow algorithm
* __Dean's Fellowship__ -- One year fellowship during my first year as a Ph.D student at BU in 2010
* __P. T. Hsu Memorial Award for Outstanding Senior Design Project__ -- Awarded to the top senior design team from the 2010 ECE graduating class

--------------------------------------------------------------------------------

### Figure Skating

I've been figure skating since I was 5, got to Nationals one year, and have skated on the BU collegiate team for a _long_ time. Some videos are below:

* __University of Delaware Intercollegiate Competition 2014__ -- Short program at the University of Delaware [[&nbsp;video&nbsp;](https://www.youtube.com/watch?v=f4kF9d-DZOg)]
* __Celebration of BU Show 2012__ -- Skating with the Boston Pops [[&nbsp;video&nbsp;](https://www.youtube.com/watch?v=8Epbwem9uEs)] [[&nbsp;video&nbsp;](https://www.youtube.com/watch?v=9P-f7_9no4s)]
* __Intercollegiate Team Nationals 2011__ -- Skating in Ann Arbor, MI [[&nbsp;video&nbsp;](https://www.youtube.com/watch?v=sT6mJVDEySI)]
* __Eastern Sectionals October 2008__ -- Skating at the Skating Club of Boston [[&nbsp;video&nbsp;](https://www.youtube.com/watch?v=JO61dBO_3yM)]
