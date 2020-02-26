workflow test {
    foreach -parallel ($i in 1..2) { 
        $priority = Get-Random -InputObject (0, 1)
        aws2 sns publish --message "{""priority"":$priority, ""order"": $i}" --topic-arn "arn:aws:sns:ap-southeast-2:950549201940:archPriorityQueue-sns-1HWCH0NCD2K5I" --profile nelliStudent
    }
}

test