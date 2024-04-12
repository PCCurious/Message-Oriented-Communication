package require nats

# message sending process
proc sendmsg {args} {
	# variables needed
	set msg [lindex $args 0]
	set topic [lindex $args 1]
	set conn [nats::connection new "MyNats"]

	# server configuration, connection and publishing
	$conn configure -servers nats://localhost:4222
	$conn connect
	$conn publish $topic "$msg"
}

for {set i 0} { $i<100 } {incr i} {
	sendmsg "Message number $i" subjectA
	sendmsg "Message number $i" subjectB
	sendmsg "Message number $i" subjectC
}