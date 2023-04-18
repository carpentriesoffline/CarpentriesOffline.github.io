---
layout: static
title: Current Unknowns and Testing
---
<div>
<h3>Current Unknowns and Testing</h3>
We need to test this system prior to using it in a workshop with learners. It may also be sensible to use it initially with a backup option of learners having accounts on an existing HPC system in case of failures. Current questions we have include:
	
<ol>
	<li><strong>How reliable is a Pi HPC?</strong> Workshops commonly include between 20 and 40 learners. Raspberry Pis are relatively low-spec machines, especially if using the first, second and third generation models, rather than the latest Pi4s. There's an open question about how many simultaneous users a Pi-based login node can support.</li>
	<li><strong>Can our DHCP server support that many users?</strong> The default CIDR/24 block of 192.168.1.1 to 192.168.1.254 has enough IP addresses for 255 external clients, but in practice client limits and the memory requirements of managing them (especially on a Pi) can lead to address assignment failures.</li>
	<li><strong>Can the Pi's WiFi interface handle the required traffic?</strong> Related to the above, there's an open question as to whether the Pi will handle having 40+ clients connected through the WiFi interface.</li>
	<li><strong>How many Pi nodes do we need in a cluster to handle all the Slurm jobs that will be queued and launched?</strong> This is also a relevant question for anyone implementing the Pi HPC in a Carpentries Offline lesson, as for cost-effectiveness, we should provide an estimate connecting the number of nodes to the number of learners.</li>
	<li><strong>Will we need multiple login nodes?</strong> If a single login node slows down too much with too many learners connected, it may be necessary to create another login node.</li>
	<li><strong>Will there be a bottleneck in the shared storage USB?</strong> USB Shared storage can become bottlenecked under high resource use. Earlier generations than the Raspberry Pi 4 were restricted by USB-2's 480 Mbps limit. Some testing of throughput should be conducted. An <a href="https://www.tomshardware.com/news/raspberry-pi-4-ssd-test,39811.html">external SSD</a> could potentially be faster than USB storage.</li>
</ol>

</div>

