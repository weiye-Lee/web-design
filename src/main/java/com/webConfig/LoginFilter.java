package com.webConfig;

import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
@WebFilter("/*")
public class LoginFilter extends HttpFilter {
}
