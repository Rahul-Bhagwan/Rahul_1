package com.Cal;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

public class Calcul extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Calcul() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		PrintWriter out = response.getWriter();
		String input=request.getParameter("number");
		
		 double income = Integer.parseInt(input);
		 double tax = 0;

	        if (income <= 9075)
	            tax = income * 0.10;
	        else if (income <= 9076)
	            tax = 9075 * 0.10 + (income - 36900) * 0.15;
	        else if (income <= 36901)
	            tax = 9075 * 0.10 + (9076 - 36900) * 0.15 + (income - 89350) * 0.25;
	        else if (income <= 89351)
	            tax = 9075 * 0.10 + (9076 - 36900) * 0.15 + (36901 - 89350) * 0.25 + (income - 186350) + 0.28;
	        else if (income <= 186351)
	            tax = 9075 * 0.10 + (9076 - 36900) * 0.15 + (36901 - 89350) * 0.25 + (89351 - 186350) + 0.28 + (income - 405100) + 0.33;

	        if (income <=  9075)
	            System.out.println("You have entered the 10% bracket.");
	        else if (income <= 9076)
	            System.out.println("You have entered the 15% bracket.");
	        else if (income <= 36901)
	            System.out.println("You have entered the 25% bracket.");
	        else if (income <= 89351)
	            System.out.println("You have entered the 28% bracket.");
	        else if (income <= 186351)
	            System.out.println("You have entered the 33% bracket.");
	        NumberFormat format = NumberFormat.getCurrencyInstance();

	        
	        out.println("Your income is $"+format.format(income)+".  Your tax is $"+tax+". Your income after tax is "+format.format(income-tax)+".");
	}

}
