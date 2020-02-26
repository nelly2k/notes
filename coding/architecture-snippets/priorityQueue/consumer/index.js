var AWS = require('aws-sdk');
AWS.config.update({region: 'ap-southeast-2'});

exports.handler = async (event) => {
    // TODO implement
    var sqs = new AWS.SQS({apiVersion: '2012-11-05'});
    
    var params = {
        MaxNumberOfMessages: 1,
        QueueUrl: process.env.priorityQueueName,
        WaitTimeSeconds: 20
       };


    sqs.receiveMessage(params, function(err, data) {
        if (err) {
          console.log("Error", err);
        } else {
          console.log("Success", data);
        }
    });

    return {
        statusCode: 200,
    };
};
