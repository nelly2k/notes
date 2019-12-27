exports.handler=(event)=>{
    console.log("Function invoked");
    console.log(JSON.stringify(event));
    return {
        statusCode: 200,
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            message: "I'm lambda"
        })
    };
}