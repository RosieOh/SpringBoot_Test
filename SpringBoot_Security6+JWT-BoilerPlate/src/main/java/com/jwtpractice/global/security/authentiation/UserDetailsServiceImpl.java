package com.jwtpractice.global.security.authentiation;

import com.jwtpractice.domain.member.member.entity.Member;
import com.jwtpractice.domain.member.member.exception.UserNotFoundException;
import com.jwtpractice.domain.member.member.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {
    private final MemberRepository memberRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Member member = memberRepository.findByEmail(email)
                .orElseThrow(() -> new UserNotFoundException("존재하지 않는 계정입니다"));
        return UserPrincipal.create(member);
    }
}
