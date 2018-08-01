package pnp.controller;

import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@RequestMapping("/main.pnp")
	public ModelAndView main(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/pages/main");
		return mav;
	}
	@RequestMapping("/contact.pnp")
	public ModelAndView contact(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/pages/contact");
		return mav;
	}
	@RequestMapping("/contact_output.pnp")
	public ModelAndView contact_output(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/WEB-INF/pages/contact_output");
		
		
		try {
			String contact_email = request.getParameter("contact_email");
			String contact_title = request.getParameter("contact_title");
			String contact_content = request.getParameter("contact_content");
			
			//메일전송
			String mailBody = "이메일 : "+contact_email
								+"<br>제목 : "+contact_title
								+"<br>내용 : "+contact_content
								; //내용
			
			String toMAil = "plannplan@daum.net";
			String mailTitle = "[(주)플랜앤플랜] 문의가 도착하였습니다.";
			JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
			MimeMessage message = mailSender.createMimeMessage();

			// Properties 설정
			Properties props = new Properties();

			// 인증여부
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.quitwait", "false");
			// 디버그 모드
			// props.put("mail.debug","true");
			props.put("mail.debug", "false");

			mailSender.setJavaMailProperties(props);
			// GMAIL 서버정보
			mailSender.setProtocol("smtp");
			mailSender.setHost("smtp.gmail.com");
			mailSender.setPort(587);
			// GMAIL 계정정보
			mailSender.setUsername("chaplin2004");
			mailSender.setPassword("l0adingg");
			mailSender.setDefaultEncoding("utf-8");

			try {
				MimeMessageHelper messageHelper = new MimeMessageHelper(
						message, true, "UTF-8");

				messageHelper.setSubject(mailTitle); // 제목
				messageHelper.setTo(toMAil); // 받는사람
				messageHelper.setText(mailBody, true);

				mailSender.send(message);

			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
}
