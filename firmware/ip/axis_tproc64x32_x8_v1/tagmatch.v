module TagMatch (
    clk         ,
    rstn        ,

    qaddtaginit ,

    IQaddtag    ,
    tagmatch
);

input clk;

input rstn;

input qaddtaginit;

input [5:0] IQaddtag;

output tagmatch;

reg [5:0] localaddr;


always @(posedge clk) begin

    if(~rstn)

    if(qaddtaginit)
        localaddr <= IQaddtag;

    else
        tagmatch <= (IQaddtag == localaddr)? 1 : 0 ;

end
