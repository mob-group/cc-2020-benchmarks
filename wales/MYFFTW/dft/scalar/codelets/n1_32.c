/*
 * Copyright (c) 2003, 2007-14 Matteo Frigo
 * Copyright (c) 2003, 2007-14 Massachusetts Institute of Technology
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

/* This file was automatically generated --- DO NOT EDIT */
/* Generated on Fri Jan 27 16:09:17 EST 2017 */

#include "codelet-dft.h"

#ifdef HAVE_FMA

/* Generated by: ../../../genfft/gen_notw.native -fma -reorder-insns -schedule-for-pipeline -compact -variables 4 -pipeline-latency 4 -n 32 -name n1_32 -include n.h */

/*
 * This function contains 372 FP additions, 136 FP multiplications,
 * (or, 236 additions, 0 multiplications, 136 fused multiply/add),
 * 136 stack variables, 7 constants, and 128 memory accesses
 */
#include "n.h"

static void n1_32(const R *ri, const R *ii, R *ro, R *io, stride is, stride os, INT v, INT ivs, INT ovs)
{
     DK(KP980785280, +0.980785280403230449126182236134239036973933731);
     DK(KP198912367, +0.198912367379658006911597622644676228597850501);
     DK(KP831469612, +0.831469612302545237078788377617905756738560812);
     DK(KP668178637, +0.668178637919298919997757686523080761552472251);
     DK(KP923879532, +0.923879532511286756128183189396788286822416626);
     DK(KP707106781, +0.707106781186547524400844362104849039284835938);
     DK(KP414213562, +0.414213562373095048801688724209698078569671875);
     {
	  INT i;
	  for (i = v; i > 0; i = i - 1, ri = ri + ivs, ii = ii + ivs, ro = ro + ovs, io = io + ovs, MAKE_VOLATILE_STRIDE(128, is), MAKE_VOLATILE_STRIDE(128, os)) {
	       E T3g, T3f, T3n, T3b, T3r, T3l, T3o, T3e, T3h, T3p;
	       {
		    E T2T, T3T, T4r, T7, T3t, T1z, T18, T4Z, Te, T50, T4s, T1f, T2W, T3u, T3U;
		    E T1G, Tm, T1n, T3X, T3y, T2Z, T1O, T53, T4w, Tt, T1u, T3W, T3B, T2Y, T1V;
		    E T52, T4z, T3O, T2t, T3L, T2K, T5F, TZ, T5I, T5X, T4R, T5k, T3M, T2E, T5j;
		    E T4W, T3P, T2N, T3H, T22, T3E, T2j, T4H, T4K, T5A, TK, T5D, T5W, T2k, T2l;
		    E T4G, T5h, T3F, T2d;
		    {
			 E Tj, T1L, Ti, T1I, T1j, Tk, T1k, T1l;
			 {
			      E T4, T1x, T3, T2R, T14, T5, T15, T16, T1C, T1F;
			      {
				   E T1, T2, T12, T13;
				   T1 = ri[0];
				   T2 = ri[WS(is, 16)];
				   T12 = ii[0];
				   T13 = ii[WS(is, 16)];
				   T4 = ri[WS(is, 8)];
				   T1x = T1 - T2;
				   T3 = T1 + T2;
				   T2R = T12 - T13;
				   T14 = T12 + T13;
				   T5 = ri[WS(is, 24)];
				   T15 = ii[WS(is, 8)];
				   T16 = ii[WS(is, 24)];
			      }
			      {
				   E Tb, T1A, Ta, T1B, T1b, Tc, T1c, T1d;
				   {
					E T8, T9, T19, T1a;
					T8 = ri[WS(is, 4)];
					{
					     E T2S, T6, T1y, T17;
					     T2S = T4 - T5;
					     T6 = T4 + T5;
					     T1y = T15 - T16;
					     T17 = T15 + T16;
					     T2T = T2R - T2S;
					     T3T = T2S + T2R;
					     T4r = T3 - T6;
					     T7 = T3 + T6;
					     T3t = T1x - T1y;
					     T1z = T1x + T1y;
					     T18 = T14 + T17;
					     T4Z = T14 - T17;
					     T9 = ri[WS(is, 20)];
					}
					T19 = ii[WS(is, 4)];
					T1a = ii[WS(is, 20)];
					Tb = ri[WS(is, 28)];
					T1A = T8 - T9;
					Ta = T8 + T9;
					T1B = T19 - T1a;
					T1b = T19 + T1a;
					Tc = ri[WS(is, 12)];
					T1c = ii[WS(is, 28)];
					T1d = ii[WS(is, 12)];
				   }
				   {
					E T2U, T1D, Td, T1E, T1e, T2V;
					T1C = T1A + T1B;
					T2U = T1B - T1A;
					T1D = Tb - Tc;
					Td = Tb + Tc;
					T1E = T1c - T1d;
					T1e = T1c + T1d;
					Te = Ta + Td;
					T50 = Td - Ta;
					T1F = T1D - T1E;
					T2V = T1D + T1E;
					T4s = T1b - T1e;
					T1f = T1b + T1e;
					T2W = T2U + T2V;
					T3u = T2U - T2V;
				   }
			      }
			      {
				   E Tg, Th, T1h, T1i;
				   Tg = ri[WS(is, 2)];
				   T3U = T1F - T1C;
				   T1G = T1C + T1F;
				   Th = ri[WS(is, 18)];
				   T1h = ii[WS(is, 2)];
				   T1i = ii[WS(is, 18)];
				   Tj = ri[WS(is, 10)];
				   T1L = Tg - Th;
				   Ti = Tg + Th;
				   T1I = T1h - T1i;
				   T1j = T1h + T1i;
				   Tk = ri[WS(is, 26)];
				   T1k = ii[WS(is, 10)];
				   T1l = ii[WS(is, 26)];
			      }
			 }
			 {
			      E Tq, T1S, Tp, T1P, T1q, Tr, T1r, T1s;
			      {
				   E Tn, To, T1o, T1p, T1J, Tl;
				   Tn = ri[WS(is, 30)];
				   T1J = Tj - Tk;
				   Tl = Tj + Tk;
				   {
					E T1M, T1m, T3w, T1K;
					T1M = T1k - T1l;
					T1m = T1k + T1l;
					T3w = T1J + T1I;
					T1K = T1I - T1J;
					{
					     E T4v, T3x, T1N, T4u;
					     T4v = Ti - Tl;
					     Tm = Ti + Tl;
					     T3x = T1L - T1M;
					     T1N = T1L + T1M;
					     T4u = T1j - T1m;
					     T1n = T1j + T1m;
					     T3X = FNMS(KP414213562, T3w, T3x);
					     T3y = FMA(KP414213562, T3x, T3w);
					     T2Z = FMA(KP414213562, T1K, T1N);
					     T1O = FNMS(KP414213562, T1N, T1K);
					     T53 = T4v + T4u;
					     T4w = T4u - T4v;
					     To = ri[WS(is, 14)];
					}
				   }
				   T1o = ii[WS(is, 30)];
				   T1p = ii[WS(is, 14)];
				   Tq = ri[WS(is, 6)];
				   T1S = Tn - To;
				   Tp = Tn + To;
				   T1P = T1o - T1p;
				   T1q = T1o + T1p;
				   Tr = ri[WS(is, 22)];
				   T1r = ii[WS(is, 6)];
				   T1s = ii[WS(is, 22)];
			      }
			      {
				   E T4S, T4V, T2L, T2M;
				   {
					E T2G, TN, T4N, T2r, T2s, TQ, T4O, T2J, TV, T2x, TU, T4T, T2w, TW, T2A;
					E T2B;
					{
					     E TO, TP, T2H, T2I;
					     {
						  E TL, TM, T2p, T2q, T1Q, Ts;
						  TL = ri[WS(is, 31)];
						  T1Q = Tq - Tr;
						  Ts = Tq + Tr;
						  {
						       E T1T, T1t, T3z, T1R;
						       T1T = T1r - T1s;
						       T1t = T1r + T1s;
						       T3z = T1Q + T1P;
						       T1R = T1P - T1Q;
						       {
							    E T4x, T3A, T1U, T4y;
							    T4x = Tp - Ts;
							    Tt = Tp + Ts;
							    T3A = T1S - T1T;
							    T1U = T1S + T1T;
							    T4y = T1q - T1t;
							    T1u = T1q + T1t;
							    T3W = FMA(KP414213562, T3z, T3A);
							    T3B = FNMS(KP414213562, T3A, T3z);
							    T2Y = FNMS(KP414213562, T1R, T1U);
							    T1V = FMA(KP414213562, T1U, T1R);
							    T52 = T4x - T4y;
							    T4z = T4x + T4y;
							    TM = ri[WS(is, 15)];
						       }
						  }
						  T2p = ii[WS(is, 31)];
						  T2q = ii[WS(is, 15)];
						  TO = ri[WS(is, 7)];
						  T2G = TL - TM;
						  TN = TL + TM;
						  T4N = T2p + T2q;
						  T2r = T2p - T2q;
						  TP = ri[WS(is, 23)];
						  T2H = ii[WS(is, 7)];
						  T2I = ii[WS(is, 23)];
					     }
					     {
						  E TS, TT, T2u, T2v;
						  TS = ri[WS(is, 3)];
						  T2s = TO - TP;
						  TQ = TO + TP;
						  T4O = T2H + T2I;
						  T2J = T2H - T2I;
						  TT = ri[WS(is, 19)];
						  T2u = ii[WS(is, 3)];
						  T2v = ii[WS(is, 19)];
						  TV = ri[WS(is, 27)];
						  T2x = TS - TT;
						  TU = TS + TT;
						  T4T = T2u + T2v;
						  T2w = T2u - T2v;
						  TW = ri[WS(is, 11)];
						  T2A = ii[WS(is, 27)];
						  T2B = ii[WS(is, 11)];
					     }
					}
					{
					     E T2z, T4U, T2C, TR, TY, T4Q, TX;
					     T3O = T2s + T2r;
					     T2t = T2r - T2s;
					     T2z = TV - TW;
					     TX = TV + TW;
					     T4U = T2A + T2B;
					     T2C = T2A - T2B;
					     T3L = T2G - T2J;
					     T2K = T2G + T2J;
					     T4S = TN - TQ;
					     TR = TN + TQ;
					     TY = TU + TX;
					     T4Q = TX - TU;
					     {
						  E T4P, T5G, T5H, T2y, T2D;
						  T4P = T4N - T4O;
						  T5G = T4N + T4O;
						  T5H = T4T + T4U;
						  T4V = T4T - T4U;
						  T5F = TR - TY;
						  TZ = TR + TY;
						  T5I = T5G - T5H;
						  T5X = T5G + T5H;
						  T2L = T2x + T2w;
						  T2y = T2w - T2x;
						  T2D = T2z + T2C;
						  T2M = T2z - T2C;
						  T4R = T4P - T4Q;
						  T5k = T4Q + T4P;
						  T3M = T2D - T2y;
						  T2E = T2y + T2D;
					     }
					}
				   }
				   {
					E T2f, Ty, T4C, T20, T21, TB, T4D, T2i, TG, T26, TF, T4I, T25, TH, T29;
					E T2a;
					{
					     E Tz, TA, T2g, T2h;
					     {
						  E Tw, Tx, T1Y, T1Z;
						  Tw = ri[WS(is, 1)];
						  T5j = T4S + T4V;
						  T4W = T4S - T4V;
						  T3P = T2L - T2M;
						  T2N = T2L + T2M;
						  Tx = ri[WS(is, 17)];
						  T1Y = ii[WS(is, 1)];
						  T1Z = ii[WS(is, 17)];
						  Tz = ri[WS(is, 9)];
						  T2f = Tw - Tx;
						  Ty = Tw + Tx;
						  T4C = T1Y + T1Z;
						  T20 = T1Y - T1Z;
						  TA = ri[WS(is, 25)];
						  T2g = ii[WS(is, 9)];
						  T2h = ii[WS(is, 25)];
					     }
					     {
						  E TD, TE, T23, T24;
						  TD = ri[WS(is, 5)];
						  T21 = Tz - TA;
						  TB = Tz + TA;
						  T4D = T2g + T2h;
						  T2i = T2g - T2h;
						  TE = ri[WS(is, 21)];
						  T23 = ii[WS(is, 5)];
						  T24 = ii[WS(is, 21)];
						  TG = ri[WS(is, 29)];
						  T26 = TD - TE;
						  TF = TD + TE;
						  T4I = T23 + T24;
						  T25 = T23 - T24;
						  TH = ri[WS(is, 13)];
						  T29 = ii[WS(is, 29)];
						  T2a = ii[WS(is, 13)];
					     }
					}
					{
					     E T28, T4J, T2b, TC, TJ, T4F, TI;
					     T3H = T21 + T20;
					     T22 = T20 - T21;
					     T28 = TG - TH;
					     TI = TG + TH;
					     T4J = T29 + T2a;
					     T2b = T29 - T2a;
					     T3E = T2f - T2i;
					     T2j = T2f + T2i;
					     T4H = Ty - TB;
					     TC = Ty + TB;
					     TJ = TF + TI;
					     T4F = TI - TF;
					     {
						  E T4E, T5B, T5C, T27, T2c;
						  T4E = T4C - T4D;
						  T5B = T4C + T4D;
						  T5C = T4I + T4J;
						  T4K = T4I - T4J;
						  T5A = TC - TJ;
						  TK = TC + TJ;
						  T5D = T5B - T5C;
						  T5W = T5B + T5C;
						  T2k = T26 + T25;
						  T27 = T25 - T26;
						  T2c = T28 + T2b;
						  T2l = T28 - T2b;
						  T4G = T4E - T4F;
						  T5h = T4F + T4E;
						  T3F = T2c - T27;
						  T2d = T27 + T2c;
					     }
					}
				   }
			      }
			 }
		    }
		    {
			 E T3I, T2m, Tv, T60, T11, T10, T5Z, T1w;
			 {
			      E T5f, T5w, T5q, T5m, T5v, T5p;
			      {
				   E T5d, T5g, T5o, T4B, T5a, T5n, T5e, T56, T4Y, T57, T55;
				   {
					E T4X, T4M, T5b, T5c, T51, T54;
					{
					     E T4t, T4A, T58, T59, T4L;
					     T5d = T4r + T4s;
					     T4t = T4r - T4s;
					     T5g = T4H + T4K;
					     T4L = T4H - T4K;
					     T3I = T2k - T2l;
					     T2m = T2k + T2l;
					     T4A = T4w - T4z;
					     T5o = T4w + T4z;
					     T4X = FNMS(KP414213562, T4W, T4R);
					     T58 = FMA(KP414213562, T4R, T4W);
					     T59 = FNMS(KP414213562, T4G, T4L);
					     T4M = FMA(KP414213562, T4L, T4G);
					     T5b = FNMS(KP707106781, T4A, T4t);
					     T4B = FMA(KP707106781, T4A, T4t);
					     T5c = T59 + T58;
					     T5a = T58 - T59;
					     T5n = T50 + T4Z;
					     T51 = T4Z - T50;
					     T54 = T52 - T53;
					     T5e = T53 + T52;
					}
					ro[WS(os, 14)] = FNMS(KP923879532, T5c, T5b);
					T56 = T4M + T4X;
					T4Y = T4M - T4X;
					T57 = FMA(KP707106781, T54, T51);
					T55 = FNMS(KP707106781, T54, T51);
					ro[WS(os, 30)] = FMA(KP923879532, T5c, T5b);
				   }
				   ro[WS(os, 6)] = FMA(KP923879532, T4Y, T4B);
				   ro[WS(os, 22)] = FNMS(KP923879532, T4Y, T4B);
				   io[WS(os, 6)] = FMA(KP923879532, T5a, T57);
				   io[WS(os, 22)] = FNMS(KP923879532, T5a, T57);
				   io[WS(os, 30)] = FMA(KP923879532, T56, T55);
				   io[WS(os, 14)] = FNMS(KP923879532, T56, T55);
				   {
					E T5i, T5l, T5r, T5u, T5s, T5t;
					T5i = FMA(KP414213562, T5h, T5g);
					T5s = FNMS(KP414213562, T5g, T5h);
					T5t = FMA(KP414213562, T5j, T5k);
					T5l = FNMS(KP414213562, T5k, T5j);
					T5r = FNMS(KP707106781, T5e, T5d);
					T5f = FMA(KP707106781, T5e, T5d);
					T5w = T5s + T5t;
					T5u = T5s - T5t;
					ro[WS(os, 26)] = FNMS(KP923879532, T5u, T5r);
					T5q = T5l - T5i;
					T5m = T5i + T5l;
					T5v = FMA(KP707106781, T5o, T5n);
					T5p = FNMS(KP707106781, T5o, T5n);
					ro[WS(os, 10)] = FMA(KP923879532, T5u, T5r);
				   }
			      }
			      ro[WS(os, 2)] = FMA(KP923879532, T5m, T5f);
			      ro[WS(os, 18)] = FNMS(KP923879532, T5m, T5f);
			      io[WS(os, 2)] = FMA(KP923879532, T5w, T5v);
			      io[WS(os, 18)] = FNMS(KP923879532, T5w, T5v);
			      io[WS(os, 10)] = FMA(KP923879532, T5q, T5p);
			      io[WS(os, 26)] = FNMS(KP923879532, T5q, T5p);
			      {
				   E Tf, T1v, T5z, T5U, T1g, Tu, T5O, T5K, T5T, T5N, T5V, T5Y;
				   {
					E T5E, T5J, T5P, T5S, T5L, T5M;
					{
					     E T5x, T5y, T5Q, T5R;
					     Tf = T7 + Te;
					     T5x = T7 - Te;
					     T5y = T1n - T1u;
					     T1v = T1n + T1u;
					     T5E = T5A + T5D;
					     T5Q = T5D - T5A;
					     T5R = T5F + T5I;
					     T5J = T5F - T5I;
					     T5P = T5x - T5y;
					     T5z = T5x + T5y;
					     T5U = T5Q + T5R;
					     T5S = T5Q - T5R;
					     T1g = T18 + T1f;
					     T5L = T18 - T1f;
					     T5M = Tt - Tm;
					     Tu = Tm + Tt;
					}
					ro[WS(os, 28)] = FNMS(KP707106781, T5S, T5P);
					T5O = T5J - T5E;
					T5K = T5E + T5J;
					T5T = T5M + T5L;
					T5N = T5L - T5M;
					ro[WS(os, 12)] = FMA(KP707106781, T5S, T5P);
				   }
				   ro[WS(os, 4)] = FMA(KP707106781, T5K, T5z);
				   ro[WS(os, 20)] = FNMS(KP707106781, T5K, T5z);
				   io[WS(os, 4)] = FMA(KP707106781, T5U, T5T);
				   io[WS(os, 20)] = FNMS(KP707106781, T5U, T5T);
				   io[WS(os, 12)] = FMA(KP707106781, T5O, T5N);
				   io[WS(os, 28)] = FNMS(KP707106781, T5O, T5N);
				   T5V = Tf - Tu;
				   Tv = Tf + Tu;
				   T60 = T5W + T5X;
				   T5Y = T5W - T5X;
				   ro[WS(os, 8)] = T5V + T5Y;
				   T11 = TZ - TK;
				   T10 = TK + TZ;
				   T5Z = T1g + T1v;
				   T1w = T1g - T1v;
				   ro[WS(os, 24)] = T5V - T5Y;
			      }
			 }
			 ro[0] = Tv + T10;
			 ro[WS(os, 16)] = Tv - T10;
			 io[0] = T5Z + T60;
			 io[WS(os, 16)] = T5Z - T60;
			 io[WS(os, 24)] = T1w - T11;
			 io[WS(os, 8)] = T11 + T1w;
			 {
			      E T39, T3k, T3j, T3a, T3d, T3c, T47, T4i, T4h, T41, T3D, T48, T4b, T4a, T4e;
			      E T3N, T45, T3Z, T42, T3K, T3Q, T4d;
			      {
				   E T2e, T37, T1X, T33, T31, T2n, T2F, T2O;
				   {
					E T1H, T1W, T2X, T30;
					T39 = FMA(KP707106781, T1G, T1z);
					T1H = FNMS(KP707106781, T1G, T1z);
					T1W = T1O - T1V;
					T3k = T1O + T1V;
					T3j = FMA(KP707106781, T2W, T2T);
					T2X = FNMS(KP707106781, T2W, T2T);
					T30 = T2Y - T2Z;
					T3a = T2Z + T2Y;
					T3d = FMA(KP707106781, T2d, T22);
					T2e = FNMS(KP707106781, T2d, T22);
					T37 = FNMS(KP923879532, T1W, T1H);
					T1X = FMA(KP923879532, T1W, T1H);
					T33 = FMA(KP923879532, T30, T2X);
					T31 = FNMS(KP923879532, T30, T2X);
					T2n = FNMS(KP707106781, T2m, T2j);
					T3c = FMA(KP707106781, T2m, T2j);
					T3g = FMA(KP707106781, T2E, T2t);
					T2F = FNMS(KP707106781, T2E, T2t);
					T2O = FNMS(KP707106781, T2N, T2K);
					T3f = FMA(KP707106781, T2N, T2K);
				   }
				   {
					E T3V, T3Y, T3G, T3J;
					{
					     E T3v, T35, T2o, T34, T2P, T3C;
					     T47 = FNMS(KP707106781, T3u, T3t);
					     T3v = FMA(KP707106781, T3u, T3t);
					     T35 = FNMS(KP668178637, T2e, T2n);
					     T2o = FMA(KP668178637, T2n, T2e);
					     T34 = FMA(KP668178637, T2F, T2O);
					     T2P = FNMS(KP668178637, T2O, T2F);
					     T3C = T3y - T3B;
					     T4i = T3y + T3B;
					     T4h = FNMS(KP707106781, T3U, T3T);
					     T3V = FMA(KP707106781, T3U, T3T);
					     {
						  E T38, T36, T32, T2Q;
						  T38 = T35 + T34;
						  T36 = T34 - T35;
						  T32 = T2o + T2P;
						  T2Q = T2o - T2P;
						  T41 = FNMS(KP923879532, T3C, T3v);
						  T3D = FMA(KP923879532, T3C, T3v);
						  ro[WS(os, 29)] = FMA(KP831469612, T38, T37);
						  ro[WS(os, 13)] = FNMS(KP831469612, T38, T37);
						  io[WS(os, 5)] = FMA(KP831469612, T36, T33);
						  io[WS(os, 21)] = FNMS(KP831469612, T36, T33);
						  io[WS(os, 29)] = FMA(KP831469612, T32, T31);
						  io[WS(os, 13)] = FNMS(KP831469612, T32, T31);
						  ro[WS(os, 5)] = FMA(KP831469612, T2Q, T1X);
						  ro[WS(os, 21)] = FNMS(KP831469612, T2Q, T1X);
						  T3Y = T3W - T3X;
						  T48 = T3X + T3W;
					     }
					}
					T4b = FMA(KP707106781, T3F, T3E);
					T3G = FNMS(KP707106781, T3F, T3E);
					T3J = FNMS(KP707106781, T3I, T3H);
					T4a = FMA(KP707106781, T3I, T3H);
					T4e = FMA(KP707106781, T3M, T3L);
					T3N = FNMS(KP707106781, T3M, T3L);
					T45 = FMA(KP923879532, T3Y, T3V);
					T3Z = FNMS(KP923879532, T3Y, T3V);
					T42 = FNMS(KP668178637, T3G, T3J);
					T3K = FMA(KP668178637, T3J, T3G);
					T3Q = FNMS(KP707106781, T3P, T3O);
					T4d = FMA(KP707106781, T3P, T3O);
				   }
			      }
			      {
				   E T4p, T49, T4l, T4j, T4n, T4c, T43, T3R, T4m, T4f;
				   T43 = FMA(KP668178637, T3N, T3Q);
				   T3R = FNMS(KP668178637, T3Q, T3N);
				   T4p = FMA(KP923879532, T48, T47);
				   T49 = FNMS(KP923879532, T48, T47);
				   {
					E T44, T46, T40, T3S;
					T44 = T42 - T43;
					T46 = T42 + T43;
					T40 = T3R - T3K;
					T3S = T3K + T3R;
					ro[WS(os, 11)] = FMA(KP831469612, T44, T41);
					ro[WS(os, 27)] = FNMS(KP831469612, T44, T41);
					io[WS(os, 3)] = FMA(KP831469612, T46, T45);
					io[WS(os, 19)] = FNMS(KP831469612, T46, T45);
					io[WS(os, 11)] = FMA(KP831469612, T40, T3Z);
					io[WS(os, 27)] = FNMS(KP831469612, T40, T3Z);
					ro[WS(os, 3)] = FMA(KP831469612, T3S, T3D);
					ro[WS(os, 19)] = FNMS(KP831469612, T3S, T3D);
				   }
				   T4l = FNMS(KP923879532, T4i, T4h);
				   T4j = FMA(KP923879532, T4i, T4h);
				   T4n = FNMS(KP198912367, T4a, T4b);
				   T4c = FMA(KP198912367, T4b, T4a);
				   T4m = FMA(KP198912367, T4d, T4e);
				   T4f = FNMS(KP198912367, T4e, T4d);
				   T3n = FNMS(KP923879532, T3a, T39);
				   T3b = FMA(KP923879532, T3a, T39);
				   {
					E T4q, T4o, T4k, T4g;
					T4q = T4n + T4m;
					T4o = T4m - T4n;
					T4k = T4c + T4f;
					T4g = T4c - T4f;
					ro[WS(os, 31)] = FMA(KP980785280, T4q, T4p);
					ro[WS(os, 15)] = FNMS(KP980785280, T4q, T4p);
					io[WS(os, 7)] = FMA(KP980785280, T4o, T4l);
					io[WS(os, 23)] = FNMS(KP980785280, T4o, T4l);
					io[WS(os, 31)] = FMA(KP980785280, T4k, T4j);
					io[WS(os, 15)] = FNMS(KP980785280, T4k, T4j);
					ro[WS(os, 7)] = FMA(KP980785280, T4g, T49);
					ro[WS(os, 23)] = FNMS(KP980785280, T4g, T49);
				   }
				   T3r = FMA(KP923879532, T3k, T3j);
				   T3l = FNMS(KP923879532, T3k, T3j);
				   T3o = FNMS(KP198912367, T3c, T3d);
				   T3e = FMA(KP198912367, T3d, T3c);
			      }
			 }
		    }
	       }
	       T3h = FNMS(KP198912367, T3g, T3f);
	       T3p = FMA(KP198912367, T3f, T3g);
	       {
		    E T3s, T3q, T3i, T3m;
		    T3s = T3o + T3p;
		    T3q = T3o - T3p;
		    T3i = T3e + T3h;
		    T3m = T3h - T3e;
		    ro[WS(os, 9)] = FMA(KP980785280, T3q, T3n);
		    ro[WS(os, 25)] = FNMS(KP980785280, T3q, T3n);
		    io[WS(os, 1)] = FMA(KP980785280, T3s, T3r);
		    io[WS(os, 17)] = FNMS(KP980785280, T3s, T3r);
		    io[WS(os, 9)] = FMA(KP980785280, T3m, T3l);
		    io[WS(os, 25)] = FNMS(KP980785280, T3m, T3l);
		    ro[WS(os, 1)] = FMA(KP980785280, T3i, T3b);
		    ro[WS(os, 17)] = FNMS(KP980785280, T3i, T3b);
	       }
	  }
     }
}

static const kdft_desc desc = { 32, "n1_32", {236, 0, 136, 0}, &GENUS, 0, 0, 0, 0 };

void X(codelet_n1_32) (planner *p) {
     X(kdft_register) (p, n1_32, &desc);
}

#else				/* HAVE_FMA */

/* Generated by: ../../../genfft/gen_notw.native -compact -variables 4 -pipeline-latency 4 -n 32 -name n1_32 -include n.h */

/*
 * This function contains 372 FP additions, 84 FP multiplications,
 * (or, 340 additions, 52 multiplications, 32 fused multiply/add),
 * 100 stack variables, 7 constants, and 128 memory accesses
 */
#include "n.h"

static void n1_32(const R *ri, const R *ii, R *ro, R *io, stride is, stride os, INT v, INT ivs, INT ovs)
{
     DK(KP831469612, +0.831469612302545237078788377617905756738560812);
     DK(KP555570233, +0.555570233019602224742830813948532874374937191);
     DK(KP195090322, +0.195090322016128267848284868477022240927691618);
     DK(KP980785280, +0.980785280403230449126182236134239036973933731);
     DK(KP923879532, +0.923879532511286756128183189396788286822416626);
     DK(KP382683432, +0.382683432365089771728459984030398866761344562);
     DK(KP707106781, +0.707106781186547524400844362104849039284835938);
     {
	  INT i;
	  for (i = v; i > 0; i = i - 1, ri = ri + ivs, ii = ii + ivs, ro = ro + ovs, io = io + ovs, MAKE_VOLATILE_STRIDE(128, is), MAKE_VOLATILE_STRIDE(128, os)) {
	       E T7, T4r, T4Z, T18, T1z, T3t, T3T, T2T, Te, T1f, T50, T4s, T2W, T3u, T1G;
	       E T3U, Tm, T1n, T1O, T2Z, T3y, T3X, T4w, T53, Tt, T1u, T1V, T2Y, T3B, T3W;
	       E T4z, T52, T2t, T3L, T3O, T2K, TR, TY, T5F, T5G, T5H, T5I, T4R, T5j, T2E;
	       E T3P, T4W, T5k, T2N, T3M, T22, T3E, T3H, T2j, TC, TJ, T5A, T5B, T5C, T5D;
	       E T4G, T5g, T2d, T3F, T4L, T5h, T2m, T3I;
	       {
		    E T3, T1x, T14, T2S, T6, T2R, T17, T1y;
		    {
			 E T1, T2, T12, T13;
			 T1 = ri[0];
			 T2 = ri[WS(is, 16)];
			 T3 = T1 + T2;
			 T1x = T1 - T2;
			 T12 = ii[0];
			 T13 = ii[WS(is, 16)];
			 T14 = T12 + T13;
			 T2S = T12 - T13;
		    }
		    {
			 E T4, T5, T15, T16;
			 T4 = ri[WS(is, 8)];
			 T5 = ri[WS(is, 24)];
			 T6 = T4 + T5;
			 T2R = T4 - T5;
			 T15 = ii[WS(is, 8)];
			 T16 = ii[WS(is, 24)];
			 T17 = T15 + T16;
			 T1y = T15 - T16;
		    }
		    T7 = T3 + T6;
		    T4r = T3 - T6;
		    T4Z = T14 - T17;
		    T18 = T14 + T17;
		    T1z = T1x - T1y;
		    T3t = T1x + T1y;
		    T3T = T2S - T2R;
		    T2T = T2R + T2S;
	       }
	       {
		    E Ta, T1B, T1b, T1A, Td, T1D, T1e, T1E;
		    {
			 E T8, T9, T19, T1a;
			 T8 = ri[WS(is, 4)];
			 T9 = ri[WS(is, 20)];
			 Ta = T8 + T9;
			 T1B = T8 - T9;
			 T19 = ii[WS(is, 4)];
			 T1a = ii[WS(is, 20)];
			 T1b = T19 + T1a;
			 T1A = T19 - T1a;
		    }
		    {
			 E Tb, Tc, T1c, T1d;
			 Tb = ri[WS(is, 28)];
			 Tc = ri[WS(is, 12)];
			 Td = Tb + Tc;
			 T1D = Tb - Tc;
			 T1c = ii[WS(is, 28)];
			 T1d = ii[WS(is, 12)];
			 T1e = T1c + T1d;
			 T1E = T1c - T1d;
		    }
		    Te = Ta + Td;
		    T1f = T1b + T1e;
		    T50 = Td - Ta;
		    T4s = T1b - T1e;
		    {
			 E T2U, T2V, T1C, T1F;
			 T2U = T1D - T1E;
			 T2V = T1B + T1A;
			 T2W = KP707106781 * (T2U - T2V);
			 T3u = KP707106781 * (T2V + T2U);
			 T1C = T1A - T1B;
			 T1F = T1D + T1E;
			 T1G = KP707106781 * (T1C - T1F);
			 T3U = KP707106781 * (T1C + T1F);
		    }
	       }
	       {
		    E Ti, T1L, T1j, T1J, Tl, T1I, T1m, T1M, T1K, T1N;
		    {
			 E Tg, Th, T1h, T1i;
			 Tg = ri[WS(is, 2)];
			 Th = ri[WS(is, 18)];
			 Ti = Tg + Th;
			 T1L = Tg - Th;
			 T1h = ii[WS(is, 2)];
			 T1i = ii[WS(is, 18)];
			 T1j = T1h + T1i;
			 T1J = T1h - T1i;
		    }
		    {
			 E Tj, Tk, T1k, T1l;
			 Tj = ri[WS(is, 10)];
			 Tk = ri[WS(is, 26)];
			 Tl = Tj + Tk;
			 T1I = Tj - Tk;
			 T1k = ii[WS(is, 10)];
			 T1l = ii[WS(is, 26)];
			 T1m = T1k + T1l;
			 T1M = T1k - T1l;
		    }
		    Tm = Ti + Tl;
		    T1n = T1j + T1m;
		    T1K = T1I + T1J;
		    T1N = T1L - T1M;
		    T1O = FNMS(KP923879532, T1N, KP382683432 * T1K);
		    T2Z = FMA(KP923879532, T1K, KP382683432 * T1N);
		    {
			 E T3w, T3x, T4u, T4v;
			 T3w = T1J - T1I;
			 T3x = T1L + T1M;
			 T3y = FNMS(KP382683432, T3x, KP923879532 * T3w);
			 T3X = FMA(KP382683432, T3w, KP923879532 * T3x);
			 T4u = T1j - T1m;
			 T4v = Ti - Tl;
			 T4w = T4u - T4v;
			 T53 = T4v + T4u;
		    }
	       }
	       {
		    E Tp, T1S, T1q, T1Q, Ts, T1P, T1t, T1T, T1R, T1U;
		    {
			 E Tn, To, T1o, T1p;
			 Tn = ri[WS(is, 30)];
			 To = ri[WS(is, 14)];
			 Tp = Tn + To;
			 T1S = Tn - To;
			 T1o = ii[WS(is, 30)];
			 T1p = ii[WS(is, 14)];
			 T1q = T1o + T1p;
			 T1Q = T1o - T1p;
		    }
		    {
			 E Tq, Tr, T1r, T1s;
			 Tq = ri[WS(is, 6)];
			 Tr = ri[WS(is, 22)];
			 Ts = Tq + Tr;
			 T1P = Tq - Tr;
			 T1r = ii[WS(is, 6)];
			 T1s = ii[WS(is, 22)];
			 T1t = T1r + T1s;
			 T1T = T1r - T1s;
		    }
		    Tt = Tp + Ts;
		    T1u = T1q + T1t;
		    T1R = T1P + T1Q;
		    T1U = T1S - T1T;
		    T1V = FMA(KP382683432, T1R, KP923879532 * T1U);
		    T2Y = FNMS(KP923879532, T1R, KP382683432 * T1U);
		    {
			 E T3z, T3A, T4x, T4y;
			 T3z = T1Q - T1P;
			 T3A = T1S + T1T;
			 T3B = FMA(KP923879532, T3z, KP382683432 * T3A);
			 T3W = FNMS(KP382683432, T3z, KP923879532 * T3A);
			 T4x = Tp - Ts;
			 T4y = T1q - T1t;
			 T4z = T4x + T4y;
			 T52 = T4x - T4y;
		    }
	       }
	       {
		    E TN, T2p, T2J, T4S, TQ, T2G, T2s, T4T, TU, T2x, T2w, T4O, TX, T2z, T2C;
		    E T4P;
		    {
			 E TL, TM, T2H, T2I;
			 TL = ri[WS(is, 31)];
			 TM = ri[WS(is, 15)];
			 TN = TL + TM;
			 T2p = TL - TM;
			 T2H = ii[WS(is, 31)];
			 T2I = ii[WS(is, 15)];
			 T2J = T2H - T2I;
			 T4S = T2H + T2I;
		    }
		    {
			 E TO, TP, T2q, T2r;
			 TO = ri[WS(is, 7)];
			 TP = ri[WS(is, 23)];
			 TQ = TO + TP;
			 T2G = TO - TP;
			 T2q = ii[WS(is, 7)];
			 T2r = ii[WS(is, 23)];
			 T2s = T2q - T2r;
			 T4T = T2q + T2r;
		    }
		    {
			 E TS, TT, T2u, T2v;
			 TS = ri[WS(is, 3)];
			 TT = ri[WS(is, 19)];
			 TU = TS + TT;
			 T2x = TS - TT;
			 T2u = ii[WS(is, 3)];
			 T2v = ii[WS(is, 19)];
			 T2w = T2u - T2v;
			 T4O = T2u + T2v;
		    }
		    {
			 E TV, TW, T2A, T2B;
			 TV = ri[WS(is, 27)];
			 TW = ri[WS(is, 11)];
			 TX = TV + TW;
			 T2z = TV - TW;
			 T2A = ii[WS(is, 27)];
			 T2B = ii[WS(is, 11)];
			 T2C = T2A - T2B;
			 T4P = T2A + T2B;
		    }
		    T2t = T2p - T2s;
		    T3L = T2p + T2s;
		    T3O = T2J - T2G;
		    T2K = T2G + T2J;
		    TR = TN + TQ;
		    TY = TU + TX;
		    T5F = TR - TY;
		    {
			 E T4N, T4Q, T2y, T2D;
			 T5G = T4S + T4T;
			 T5H = T4O + T4P;
			 T5I = T5G - T5H;
			 T4N = TN - TQ;
			 T4Q = T4O - T4P;
			 T4R = T4N - T4Q;
			 T5j = T4N + T4Q;
			 T2y = T2w - T2x;
			 T2D = T2z + T2C;
			 T2E = KP707106781 * (T2y - T2D);
			 T3P = KP707106781 * (T2y + T2D);
			 {
			      E T4U, T4V, T2L, T2M;
			      T4U = T4S - T4T;
			      T4V = TX - TU;
			      T4W = T4U - T4V;
			      T5k = T4V + T4U;
			      T2L = T2z - T2C;
			      T2M = T2x + T2w;
			      T2N = KP707106781 * (T2L - T2M);
			      T3M = KP707106781 * (T2M + T2L);
			 }
		    }
	       }
	       {
		    E Ty, T2f, T21, T4C, TB, T1Y, T2i, T4D, TF, T28, T2b, T4I, TI, T23, T26;
		    E T4J;
		    {
			 E Tw, Tx, T1Z, T20;
			 Tw = ri[WS(is, 1)];
			 Tx = ri[WS(is, 17)];
			 Ty = Tw + Tx;
			 T2f = Tw - Tx;
			 T1Z = ii[WS(is, 1)];
			 T20 = ii[WS(is, 17)];
			 T21 = T1Z - T20;
			 T4C = T1Z + T20;
		    }
		    {
			 E Tz, TA, T2g, T2h;
			 Tz = ri[WS(is, 9)];
			 TA = ri[WS(is, 25)];
			 TB = Tz + TA;
			 T1Y = Tz - TA;
			 T2g = ii[WS(is, 9)];
			 T2h = ii[WS(is, 25)];
			 T2i = T2g - T2h;
			 T4D = T2g + T2h;
		    }
		    {
			 E TD, TE, T29, T2a;
			 TD = ri[WS(is, 5)];
			 TE = ri[WS(is, 21)];
			 TF = TD + TE;
			 T28 = TD - TE;
			 T29 = ii[WS(is, 5)];
			 T2a = ii[WS(is, 21)];
			 T2b = T29 - T2a;
			 T4I = T29 + T2a;
		    }
		    {
			 E TG, TH, T24, T25;
			 TG = ri[WS(is, 29)];
			 TH = ri[WS(is, 13)];
			 TI = TG + TH;
			 T23 = TG - TH;
			 T24 = ii[WS(is, 29)];
			 T25 = ii[WS(is, 13)];
			 T26 = T24 - T25;
			 T4J = T24 + T25;
		    }
		    T22 = T1Y + T21;
		    T3E = T2f + T2i;
		    T3H = T21 - T1Y;
		    T2j = T2f - T2i;
		    TC = Ty + TB;
		    TJ = TF + TI;
		    T5A = TC - TJ;
		    {
			 E T4E, T4F, T27, T2c;
			 T5B = T4C + T4D;
			 T5C = T4I + T4J;
			 T5D = T5B - T5C;
			 T4E = T4C - T4D;
			 T4F = TI - TF;
			 T4G = T4E - T4F;
			 T5g = T4F + T4E;
			 T27 = T23 - T26;
			 T2c = T28 + T2b;
			 T2d = KP707106781 * (T27 - T2c);
			 T3F = KP707106781 * (T2c + T27);
			 {
			      E T4H, T4K, T2k, T2l;
			      T4H = Ty - TB;
			      T4K = T4I - T4J;
			      T4L = T4H - T4K;
			      T5h = T4H + T4K;
			      T2k = T2b - T28;
			      T2l = T23 + T26;
			      T2m = KP707106781 * (T2k - T2l);
			      T3I = KP707106781 * (T2k + T2l);
			 }
		    }
	       }
	       {
		    E T4B, T57, T5a, T5c, T4Y, T56, T55, T5b;
		    {
			 E T4t, T4A, T58, T59;
			 T4t = T4r - T4s;
			 T4A = KP707106781 * (T4w - T4z);
			 T4B = T4t + T4A;
			 T57 = T4t - T4A;
			 T58 = FNMS(KP923879532, T4L, KP382683432 * T4G);
			 T59 = FMA(KP382683432, T4W, KP923879532 * T4R);
			 T5a = T58 - T59;
			 T5c = T58 + T59;
		    }
		    {
			 E T4M, T4X, T51, T54;
			 T4M = FMA(KP923879532, T4G, KP382683432 * T4L);
			 T4X = FNMS(KP923879532, T4W, KP382683432 * T4R);
			 T4Y = T4M + T4X;
			 T56 = T4X - T4M;
			 T51 = T4Z - T50;
			 T54 = KP707106781 * (T52 - T53);
			 T55 = T51 - T54;
			 T5b = T51 + T54;
		    }
		    ro[WS(os, 22)] = T4B - T4Y;
		    io[WS(os, 22)] = T5b - T5c;
		    ro[WS(os, 6)] = T4B + T4Y;
		    io[WS(os, 6)] = T5b + T5c;
		    io[WS(os, 30)] = T55 - T56;
		    ro[WS(os, 30)] = T57 - T5a;
		    io[WS(os, 14)] = T55 + T56;
		    ro[WS(os, 14)] = T57 + T5a;
	       }
	       {
		    E T5f, T5r, T5u, T5w, T5m, T5q, T5p, T5v;
		    {
			 E T5d, T5e, T5s, T5t;
			 T5d = T4r + T4s;
			 T5e = KP707106781 * (T53 + T52);
			 T5f = T5d + T5e;
			 T5r = T5d - T5e;
			 T5s = FNMS(KP382683432, T5h, KP923879532 * T5g);
			 T5t = FMA(KP923879532, T5k, KP382683432 * T5j);
			 T5u = T5s - T5t;
			 T5w = T5s + T5t;
		    }
		    {
			 E T5i, T5l, T5n, T5o;
			 T5i = FMA(KP382683432, T5g, KP923879532 * T5h);
			 T5l = FNMS(KP382683432, T5k, KP923879532 * T5j);
			 T5m = T5i + T5l;
			 T5q = T5l - T5i;
			 T5n = T50 + T4Z;
			 T5o = KP707106781 * (T4w + T4z);
			 T5p = T5n - T5o;
			 T5v = T5n + T5o;
		    }
		    ro[WS(os, 18)] = T5f - T5m;
		    io[WS(os, 18)] = T5v - T5w;
		    ro[WS(os, 2)] = T5f + T5m;
		    io[WS(os, 2)] = T5v + T5w;
		    io[WS(os, 26)] = T5p - T5q;
		    ro[WS(os, 26)] = T5r - T5u;
		    io[WS(os, 10)] = T5p + T5q;
		    ro[WS(os, 10)] = T5r + T5u;
	       }
	       {
		    E T5z, T5P, T5S, T5U, T5K, T5O, T5N, T5T;
		    {
			 E T5x, T5y, T5Q, T5R;
			 T5x = T7 - Te;
			 T5y = T1n - T1u;
			 T5z = T5x + T5y;
			 T5P = T5x - T5y;
			 T5Q = T5D - T5A;
			 T5R = T5F + T5I;
			 T5S = KP707106781 * (T5Q - T5R);
			 T5U = KP707106781 * (T5Q + T5R);
		    }
		    {
			 E T5E, T5J, T5L, T5M;
			 T5E = T5A + T5D;
			 T5J = T5F - T5I;
			 T5K = KP707106781 * (T5E + T5J);
			 T5O = KP707106781 * (T5J - T5E);
			 T5L = T18 - T1f;
			 T5M = Tt - Tm;
			 T5N = T5L - T5M;
			 T5T = T5M + T5L;
		    }
		    ro[WS(os, 20)] = T5z - T5K;
		    io[WS(os, 20)] = T5T - T5U;
		    ro[WS(os, 4)] = T5z + T5K;
		    io[WS(os, 4)] = T5T + T5U;
		    io[WS(os, 28)] = T5N - T5O;
		    ro[WS(os, 28)] = T5P - T5S;
		    io[WS(os, 12)] = T5N + T5O;
		    ro[WS(os, 12)] = T5P + T5S;
	       }
	       {
		    E Tv, T5V, T5Y, T60, T10, T11, T1w, T5Z;
		    {
			 E Tf, Tu, T5W, T5X;
			 Tf = T7 + Te;
			 Tu = Tm + Tt;
			 Tv = Tf + Tu;
			 T5V = Tf - Tu;
			 T5W = T5B + T5C;
			 T5X = T5G + T5H;
			 T5Y = T5W - T5X;
			 T60 = T5W + T5X;
		    }
		    {
			 E TK, TZ, T1g, T1v;
			 TK = TC + TJ;
			 TZ = TR + TY;
			 T10 = TK + TZ;
			 T11 = TZ - TK;
			 T1g = T18 + T1f;
			 T1v = T1n + T1u;
			 T1w = T1g - T1v;
			 T5Z = T1g + T1v;
		    }
		    ro[WS(os, 16)] = Tv - T10;
		    io[WS(os, 16)] = T5Z - T60;
		    ro[0] = Tv + T10;
		    io[0] = T5Z + T60;
		    io[WS(os, 8)] = T11 + T1w;
		    ro[WS(os, 8)] = T5V + T5Y;
		    io[WS(os, 24)] = T1w - T11;
		    ro[WS(os, 24)] = T5V - T5Y;
	       }
	       {
		    E T1X, T33, T31, T37, T2o, T34, T2P, T35;
		    {
			 E T1H, T1W, T2X, T30;
			 T1H = T1z - T1G;
			 T1W = T1O - T1V;
			 T1X = T1H + T1W;
			 T33 = T1H - T1W;
			 T2X = T2T - T2W;
			 T30 = T2Y - T2Z;
			 T31 = T2X - T30;
			 T37 = T2X + T30;
		    }
		    {
			 E T2e, T2n, T2F, T2O;
			 T2e = T22 - T2d;
			 T2n = T2j - T2m;
			 T2o = FMA(KP980785280, T2e, KP195090322 * T2n);
			 T34 = FNMS(KP980785280, T2n, KP195090322 * T2e);
			 T2F = T2t - T2E;
			 T2O = T2K - T2N;
			 T2P = FNMS(KP980785280, T2O, KP195090322 * T2F);
			 T35 = FMA(KP195090322, T2O, KP980785280 * T2F);
		    }
		    {
			 E T2Q, T38, T32, T36;
			 T2Q = T2o + T2P;
			 ro[WS(os, 23)] = T1X - T2Q;
			 ro[WS(os, 7)] = T1X + T2Q;
			 T38 = T34 + T35;
			 io[WS(os, 23)] = T37 - T38;
			 io[WS(os, 7)] = T37 + T38;
			 T32 = T2P - T2o;
			 io[WS(os, 31)] = T31 - T32;
			 io[WS(os, 15)] = T31 + T32;
			 T36 = T34 - T35;
			 ro[WS(os, 31)] = T33 - T36;
			 ro[WS(os, 15)] = T33 + T36;
		    }
	       }
	       {
		    E T3D, T41, T3Z, T45, T3K, T42, T3R, T43;
		    {
			 E T3v, T3C, T3V, T3Y;
			 T3v = T3t - T3u;
			 T3C = T3y - T3B;
			 T3D = T3v + T3C;
			 T41 = T3v - T3C;
			 T3V = T3T - T3U;
			 T3Y = T3W - T3X;
			 T3Z = T3V - T3Y;
			 T45 = T3V + T3Y;
		    }
		    {
			 E T3G, T3J, T3N, T3Q;
			 T3G = T3E - T3F;
			 T3J = T3H - T3I;
			 T3K = FMA(KP555570233, T3G, KP831469612 * T3J);
			 T42 = FNMS(KP831469612, T3G, KP555570233 * T3J);
			 T3N = T3L - T3M;
			 T3Q = T3O - T3P;
			 T3R = FNMS(KP831469612, T3Q, KP555570233 * T3N);
			 T43 = FMA(KP831469612, T3N, KP555570233 * T3Q);
		    }
		    {
			 E T3S, T46, T40, T44;
			 T3S = T3K + T3R;
			 ro[WS(os, 21)] = T3D - T3S;
			 ro[WS(os, 5)] = T3D + T3S;
			 T46 = T42 + T43;
			 io[WS(os, 21)] = T45 - T46;
			 io[WS(os, 5)] = T45 + T46;
			 T40 = T3R - T3K;
			 io[WS(os, 29)] = T3Z - T40;
			 io[WS(os, 13)] = T3Z + T40;
			 T44 = T42 - T43;
			 ro[WS(os, 29)] = T41 - T44;
			 ro[WS(os, 13)] = T41 + T44;
		    }
	       }
	       {
		    E T49, T4l, T4j, T4p, T4c, T4m, T4f, T4n;
		    {
			 E T47, T48, T4h, T4i;
			 T47 = T3t + T3u;
			 T48 = T3X + T3W;
			 T49 = T47 + T48;
			 T4l = T47 - T48;
			 T4h = T3T + T3U;
			 T4i = T3y + T3B;
			 T4j = T4h - T4i;
			 T4p = T4h + T4i;
		    }
		    {
			 E T4a, T4b, T4d, T4e;
			 T4a = T3E + T3F;
			 T4b = T3H + T3I;
			 T4c = FMA(KP980785280, T4a, KP195090322 * T4b);
			 T4m = FNMS(KP195090322, T4a, KP980785280 * T4b);
			 T4d = T3L + T3M;
			 T4e = T3O + T3P;
			 T4f = FNMS(KP195090322, T4e, KP980785280 * T4d);
			 T4n = FMA(KP195090322, T4d, KP980785280 * T4e);
		    }
		    {
			 E T4g, T4q, T4k, T4o;
			 T4g = T4c + T4f;
			 ro[WS(os, 17)] = T49 - T4g;
			 ro[WS(os, 1)] = T49 + T4g;
			 T4q = T4m + T4n;
			 io[WS(os, 17)] = T4p - T4q;
			 io[WS(os, 1)] = T4p + T4q;
			 T4k = T4f - T4c;
			 io[WS(os, 25)] = T4j - T4k;
			 io[WS(os, 9)] = T4j + T4k;
			 T4o = T4m - T4n;
			 ro[WS(os, 25)] = T4l - T4o;
			 ro[WS(os, 9)] = T4l + T4o;
		    }
	       }
	       {
		    E T3b, T3n, T3l, T3r, T3e, T3o, T3h, T3p;
		    {
			 E T39, T3a, T3j, T3k;
			 T39 = T1z + T1G;
			 T3a = T2Z + T2Y;
			 T3b = T39 + T3a;
			 T3n = T39 - T3a;
			 T3j = T2T + T2W;
			 T3k = T1O + T1V;
			 T3l = T3j - T3k;
			 T3r = T3j + T3k;
		    }
		    {
			 E T3c, T3d, T3f, T3g;
			 T3c = T22 + T2d;
			 T3d = T2j + T2m;
			 T3e = FMA(KP555570233, T3c, KP831469612 * T3d);
			 T3o = FNMS(KP555570233, T3d, KP831469612 * T3c);
			 T3f = T2t + T2E;
			 T3g = T2K + T2N;
			 T3h = FNMS(KP555570233, T3g, KP831469612 * T3f);
			 T3p = FMA(KP831469612, T3g, KP555570233 * T3f);
		    }
		    {
			 E T3i, T3s, T3m, T3q;
			 T3i = T3e + T3h;
			 ro[WS(os, 19)] = T3b - T3i;
			 ro[WS(os, 3)] = T3b + T3i;
			 T3s = T3o + T3p;
			 io[WS(os, 19)] = T3r - T3s;
			 io[WS(os, 3)] = T3r + T3s;
			 T3m = T3h - T3e;
			 io[WS(os, 27)] = T3l - T3m;
			 io[WS(os, 11)] = T3l + T3m;
			 T3q = T3o - T3p;
			 ro[WS(os, 27)] = T3n - T3q;
			 ro[WS(os, 11)] = T3n + T3q;
		    }
	       }
	  }
     }
}

static const kdft_desc desc = { 32, "n1_32", {340, 52, 32, 0}, &GENUS, 0, 0, 0, 0 };

void X(codelet_n1_32) (planner *p) {
     X(kdft_register) (p, n1_32, &desc);
}

#endif				/* HAVE_FMA */