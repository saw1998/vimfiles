// C++ includes used for precompiling -*- C++ -*-

// Copyright (C) 2003-2020 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.

// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.

// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.

/** @file stdc++.h
 *  This is an implementation file for a precompiled header.
 */

// 17.4.1.2 Headers

// C
#define _CRT_SECURE_NO_WARNINGS

#ifndef _GLIBCXX_NO_ASSERT
#include <cassert>
#endif
#include <cctype>
#include <cerrno>
#include <cfloat>
#include <ciso646>
#include <climits>
//#include <clocale>
#include <cmath>
#include <csetjmp>
#include <csignal>
#include <cstdarg>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <cwchar>

//#include <cwctype>

#if __cplusplus >= 201103L
#include <ccomplex>
#include <cfenv>
#include <cinttypes>
#include <cstdalign>
#include <cstdbool>
#include <cstdint>
#include <ctgmath>
#include <cuchar>
#endif

// C++
#include <algorithm>
#include <bitset>
#include <complex>
#include <deque>
//#include <exception>
#include <fstream>
#include <functional>
#include <iomanip>
//#include <ios>
//#include <iosfwd>
#include <iostream>
#include <istream>
#include <iterator>
//#include <limits>
#include <list>
//#include <locale>
#include <map>
//#include <memory>
#include <new>
//#include <numeric>
#include <ostream>
#include <queue>
#include <set>
#include <sstream>
#include <stack>
//#include <stdexcept>
//#include <streambuf>
#include <string>
#include <typeinfo>
//#include <utility>
//#include <valarray>
#include <vector>

#if __cplusplus >= 201103L
#include <array>
//#include <atomic>
//#include <chrono>
//#include <codecvt>
//#include <condition_variable>
//#include <forward_list>
//#include <future>
//#include <initializer_list>
#include <mutex>
#include <random>
//#include <ratio>
//#include <regex>
//#include <scoped_allocator>
//#include <system_error>
//#include <thread>
#include <tuple>
//#include <typeindex>
//#include <type_traits>
#include <unordered_map>
#include <unordered_set>
#endif
/*
#if __cplusplus >= 201402L
#include <shared_mutex>
#endif

#if __cplusplus >= 201703L
#include <any>
#include <charconv>
#include <execution>
#include <filesystem>
#include <optional>
#include <memory_resource>
#include <string_view>
#include <variant>
#endif

#if __cplusplus > 201703L
#include <bit>
#include <compare>
#include <concepts>
#include <numbers>
#include <ranges>
#include <span>
#include <stop_token>
#include <syncstream>
#include <version>
#endif
*/
template <typename t>
t __gcd(t a,t b);

template< class ForwardIt, class T >
void iota( ForwardIt first, ForwardIt last, T value );
void __print(int x) {std::cerr << x;} void __print(long x) {std::cerr << x;} void __print(long long x) {std::cerr << x;} void __print(unsigned x) {std::cerr << x;} 
void __print(unsigned long x) {std::cerr << x;} void __print(unsigned long long x) {std::cerr << x;} void __print(float x) {std::cerr << x;}
void __print(double x) {std::cerr << x;} void __print(long double x) {std::cerr << x;} void __print(char x) {std::cerr << '\'' << x << '\'';}
void __print(const char *x) {std::cerr << '\"' << x << '\"';} void __print(const std::string &x) {std::cerr << '\"' << x << '\"';} void __print(bool x) {std::cerr << (x ? "true" : "false");}
void _print() {std::cerr << "]\n";}
template <typename T>
void _print(std::vector<std::vector<T>> t){std::cerr<<"\b{";for(auto &i:t){for(auto &j:i){std::cerr<<j<<"  ";}std::cerr<<"\n       ";}std::cerr<<"}\n";}
template <typename T>
void _print(std::queue<T> q){std::cerr<<"{";while(!q.empty()){__print(q.front());q.pop();if(!q.empty()) std::cerr<<",";}std::cerr<<"}";_print();}
template<typename T, typename V>
void __print(const std::pair<T, V> &x) {std::cerr << '{'; __print(x.first); std::cerr << ','; __print(x.second); std::cerr << '}';}
template<typename T>
void _print(std::stack<T> a){std::cerr<<"{";while(!a.empty()){__print(a.top());a.pop();if(!a.empty()) std::cerr<<",";}std::cerr<<"}";_print();}
template <typename T>
struct point3d;
template <typename T>
void __print(point3d<T> x){std::cerr<<"point3d("<<x.i<<","<<x.j<<","<<x.k<<")";}
template<typename T>
void __print(const T &x) {int f = 0; std::cerr << '{'; for (const auto &i: x) std::cerr << (f++ ? "," : ""), __print(i); std::cerr << "}";}
template <typename T, typename... V>
void _print(T t, V... v) {__print(t); if (sizeof...(v)) std::cerr << ", "; _print(v...);}

#define debug(x...) cerr << "[" << #x << "] = ["; _print(x)


//bin debugger

void __printb(int a) {
	int i =( 31-__builtin_clz(a));
    while(i>=0){
        if(a&(1<<i)) std::cerr<<1;
        else std::cerr<<0;
        //cerr<<a&(1<<i);
        i--;
    }
}
void __printb(long long a) {
	int i =( 63-__builtin_clz(a));
    while(i>=0){
        if(a&(1<<i)) std::cerr<<1;
        else std::cerr<<0;
        //cerr<<a&(1<<i);
        i--;
    }
}
void __printb(unsigned int a) {
	int i =( 32-__builtin_clz(a));
    while(i>=0){
        if(a&(1<<i)) std::cerr<<1;
        else std::cerr<<0;
        //cerr<<a&(1<<i);
        i--;
    }
}
void __printb(bool a) {
	if(a) std::cerr<<1;
	else std::cerr<<0;
}
 

void _printb() {std::cerr << "]\n";}
template <typename T>
void _printb(std::vector<std::vector<T>> t){std::cerr<<"\b{";for(auto &i:t){for(auto &j:i){std::cerr<<__printb(j)<<"  ";}std::cerr<<"\n       ";}std::cerr<<"}]\n";}
template <typename T>
void _printb(std::queue<T> q){std::cerr<<"{";while(!q.empty()){__printb(q.front());q.pop();if(!q.empty()) std::cerr<<",";}std::cerr<<"}";_printb();}
template<typename T, typename V>
void __printb(const std::pair<T, V> &x) {std::cerr << '{'; __printb(x.first); std::cerr << ','; __printb(x.second); std::cerr << '}';}
template<typename T>
void _printb(std::stack<T> a){std::cerr<<"{";while(!a.empty()){__printb(a.top());a.pop();if(!a.empty()) std::cerr<<",";}std::cerr<<"}";_printb();}
template<typename T>
void __printb(const T &x) {int f = 0; std::cerr << '{'; for (const auto &i: x) std::cerr << (f++ ? "," : ""), __printb(i); std::cerr << "}";}
template <typename T, typename... V>
void _printb(T t, V... v) {__printb(t); if (sizeof...(v)) std::cerr << ", "; _printb(v...);}


#define debugg(x...) cerr << "[bin-> " << #x << "] = ["; _printb(x)