package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.vo.Exhibit;

/**
 * Servlet implementation class PracticeJstlServlet
 */
@WebServlet("/practice.jstl")
public class PracticeJstlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PracticeJstlServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.getSession().setAttribute("nickname", "User-" + (int)(Math.random()*100+1));
		
		
		int size = (int)(Math.random()*5);
		
		ArrayList<Exhibit> list = new ArrayList<>();
		list.add(new Exhibit("이토 준지 호러하우스", "2024.06.15 ~ 2024.09.08", "DUEX(홍대 LC TOWER B3F)"));
		list.add(new Exhibit("2024 거제 맥주 축제", "2024.08.23 ~ 2024.08.24", "장승포 수변공원"));
		list.add(new Exhibit("창경궁 인문학산책 야간편", "2023.02.06~2024.12.31", "창경궁"));
		list.add(new Exhibit("2024년 제3회 디오니 주류박람회 - 술동산，酒토피아", "2024.10.12~2024.10.13", "디오니스토어 전주 본점&디오니카페"));
		list.add(new Exhibit("[얼리버드] 툴루즈 로트렉 : 몽마르트의 별", "2024.09.14~2025.03.03", "마이아트뮤지엄"));
		
		ArrayList<Exhibit> eList = new ArrayList<>();
		for(int i=0; i<size; i++) {
			eList.add(list.get(i));
		}
		
		request.setAttribute("eList", eList);


		// TODO: practice_jstl.jsp 페이지로 포워딩
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}