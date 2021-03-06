/*
 * Copyright (c) 2005, The haXe Project Contributors
 * All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *   - Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   - Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE HAXE PROJECT CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE HAXE PROJECT CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
 * DAMAGE.
 */
package haxe;

#if (cpp && !xmldoc)
typedef Int32 = cpp.CppInt32__;
#else

class Int32 {

	public static inline function make( a : Int, b : Int ) : Int32 {
		#if neko
		return add(shl(cast a,16),cast b);
		#else
		return cast ((a << 16) | b);
		#end
	}

	public static inline function ofInt( x : Int ) : Int32 {
		#if neko
		return untyped __i32__new(x);
		#else
		return cast x;
		#end
	}

	public static inline function toInt( x : Int32 ) : Int {
		#if !neko
		if( (((cast x) >> 30) & 1) != ((cast x) >>> 31) ) throw "Overflow "+x;
		#end
		#if neko
		return try untyped __i32__to_int(x) catch( e : Dynamic ) throw "Overflow"+x;
		#elseif flash9
		return cast x;
		#else
		return (cast x) & 0xFFFFFFFF;
		#end
	}

	public static inline function toNativeInt( x : Int32 ) : Int {
		#if neko
		return untyped (__i32__ushr(x,8) << 8) | __i32__and(x,0xFF);
		#else
		return cast x;
		#end
	}

	public static inline function add( a : Int32, b : Int32 ) : Int32 {
		#if neko
		return untyped __i32__add(a,b);
		#else
		return cast ((cast a) + (cast b));
		#end
	}

	public static inline function sub( a : Int32, b : Int32 ) : Int32 {
		#if neko
		return untyped __i32__sub(a,b);
		#else
		return cast ((cast a) - (cast b));
		#end
	}

	public static inline function mul( a : Int32, b : Int32 ) : Int32 {
		#if neko
		return untyped __i32__mul(a,b);
		#else
		return cast ((cast a) * (cast b));
		#end
	}

	public static inline function div( a : Int32, b : Int32 ) : Int32 {
		#if neko
		return untyped __i32__div(a,b);
		#else
		return cast Std.int((cast a) / (cast b));
		#end
	}

	public static inline function mod( a : Int32, b : Int32 ) : Int32 {
		#if neko
		return untyped __i32__mod(a,b);
		#else
		return cast ((cast a) % (cast b));
		#end
	}

	public static inline function shl( a : Int32, b : Int ) : Int32 {
		#if neko
		return untyped __i32__shl(a,b);
		#else
		return cast ((cast a) << b);
		#end
	}

	public static inline function shr( a : Int32, b : Int ) : Int32 {
		#if neko
		return untyped __i32__shr(a,b);
		#else
		return cast ((cast a) >> b);
		#end
	}

	public static inline function ushr( a : Int32, b : Int ) : Int32 {
		#if neko
		return untyped __i32__ushr(a,b);
		#else
		return cast ((cast a) >>> b);
		#end
	}

	public static inline function and( a : Int32, b : Int32 ) : Int32 {
		#if neko
		return untyped __i32__and(a,b);
		#else
		return cast ((cast a) & (cast b));
		#end
	}

	public static inline function or( a : Int32, b : Int32 ) : Int32 {
		#if neko
		return untyped __i32__or(a,b);
		#else
		return cast ((cast a) | (cast b));
		#end
	}

	public static inline function xor( a : Int32, b : Int32 ) : Int32 {
		#if neko
		return untyped __i32__xor(a,b);
		#else
		return cast ((cast a) ^ (cast b));
		#end
	}

	public static inline function neg( a : Int32 ) : Int32 {
		#if neko
		return untyped __i32__neg(a);
		#else
		return cast -(cast a);
		#end
	}

	public static inline function complement( a : Int32 ) : Int32 {
		#if neko
		return untyped __i32__complement(a);
		#else
		return cast ~(cast a);
		#end
	}

	public static inline function compare( a : Int32, b : Int32 ) : Int {
		#if neko
		return untyped __i32__compare(a,b);
		#else
		return untyped a - b;
		#end
	}

	#if neko
	static function __init__() untyped {
		__i32__new = neko.Lib.load("std","int32_new",1);
		__i32__to_int = neko.Lib.load("std","int32_to_int",1);
		__i32__add = neko.Lib.load("std","int32_add",2);
		__i32__sub = neko.Lib.load("std","int32_sub",2);
		__i32__mul = neko.Lib.load("std","int32_mul",2);
		__i32__div = neko.Lib.load("std","int32_div",2);
		__i32__mod = neko.Lib.load("std","int32_mod",2);
		__i32__shl = neko.Lib.load("std","int32_shl",2);
		__i32__shr = neko.Lib.load("std","int32_shr",2);
		__i32__ushr = neko.Lib.load("std","int32_ushr",2);
		__i32__and = neko.Lib.load("std","int32_and",2);
		__i32__or = neko.Lib.load("std","int32_or",2);
		__i32__xor = neko.Lib.load("std","int32_xor",2);
		__i32__neg = neko.Lib.load("std","int32_neg",1);
		__i32__complement = neko.Lib.load("std","int32_complement",1);
		__i32__compare = neko.Lib.load("std","int32_compare",2);
	}
	#end

}
#end

