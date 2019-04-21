package kr.co.dahaeform.member;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	@Autowired
	SqlSession sqlSession;

	public MemberDAO() {
		System.out.println("----- MemberDAO 객체 생성됨");
	}
	
	public int create(MemberDTO dto) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		System.out.println("***** MemberDAO의 dto 출력:" + dto.toString());
		int count = mapper.create(dto);
		System.out.println("***** MemberDAO의 count 출력" + count);
		return count;
	}//create() end
}//class end
