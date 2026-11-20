# code for test_inheritance
  ...
     module test_inheritance;

        // In class account_base;
        class account_base;
                // Declare property balance int type and initialize with value 2000
                int balance=2000;
                // In the function summary_base ,return balance
                function int summary_base;
                        return balance;
                endfunction
                // In the task deposit,
                // Pass an input argument 'pay' of int type
                // Add pay with previous balance
                task deposit;
                        input int pay;
                        balance=pay+balance;
                endtask
        endclass: account_base

        // Extend class account_extd from account_base;
        class account_extd extends account_base;
                // Declare property balance of int type and initialize with value 3000
                int balance=3000;
                // In function summary_extd, return balance from extended class
                function int summary_extd;
                        return balance+super.balance;
                        //balance=balance+super.balance;
                        //return balance;
                endfunction
                // the new value returned should be summation of base class balance and extended class balance
                // Hint: use super to access the base class balance

        endclass: account_extd

        // Declare a handle for account_extd class as acc_h
        account_extd acc_h;
        // Within initial block,
        initial
        begin
                        // Create an object for acc_h
                acc_h=new();
                        // Pass the amount for the method deposit and
                        // Call the method summary_base to display the base class balance
                acc_h.deposit(5000);
                $display("base class balance=%p",acc_h.summary_base);
                        // Call method summary_extd to display balance
                        // Observe that the super.balance returns the base class balance
                $display("extended class balance=%p",acc_h.summary_extd);
        end
endmodule : test_inheritance

...
