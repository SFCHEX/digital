module add_sub_signal(
    input Reverse,Button,
    output add,sub
);

wire not_reverse;
not(not_reverse,Reverse);
and(add,not_reverse,Button);
and(sub,Reverse,Button);


endmodule 