package require nats

# set the connection
set conn [nats::connection new "MyNats"]

# configuration
$conn configure -servers nats://localhost:4222
$conn connect
puts "Connection status: [$conn cget -status]";
puts "NATS version: [dict get [$conn server_info] version]"

# process to read message subscribed
proc onMessage {subject message replyTo} {
	puts "Received '$message' on subject $subject"
}

# subject subscription and process call
$conn subscribe subjectA -callback onMessage
$conn subscribe subjectB -callback onMessage
$conn subscribe subjectC -callback onMessage

vwait forever