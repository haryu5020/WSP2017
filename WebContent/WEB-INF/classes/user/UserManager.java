package user;

import java.util.ArrayList;
import java.util.List;

public class UserManager {
	// 주소록 목록을 관리하기 위한 ArrayList
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	// 주소록 추가 메서드
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}