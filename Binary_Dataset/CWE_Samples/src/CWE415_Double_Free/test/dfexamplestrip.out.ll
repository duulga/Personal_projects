source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_4010 = global i64 0
@0 = external global i32

define i64 @function_1000() local_unnamed_addr {
dec_label_pc_1000:
  %rax.0.reg2mem = alloca i64, !insn.addr !0
  %0 = load i64, i64* inttoptr (i64 16360 to i64*), align 8, !insn.addr !1
  %1 = icmp eq i64 %0, 0, !insn.addr !2
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !3
  br i1 %1, label %dec_label_pc_1016, label %dec_label_pc_1014, !insn.addr !3

dec_label_pc_1014:                                ; preds = %dec_label_pc_1000
  call void @__gmon_start__(), !insn.addr !4
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !4
  br label %dec_label_pc_1016, !insn.addr !4

dec_label_pc_1016:                                ; preds = %dec_label_pc_1014, %dec_label_pc_1000
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !5
}

define void @function_1050(i64* %d) local_unnamed_addr {
dec_label_pc_1050:
  call void @__cxa_finalize(i64* %d), !insn.addr !6
  ret void, !insn.addr !6
}

define void @function_1060(i64* %ptr) local_unnamed_addr {
dec_label_pc_1060:
  call void @free(i64* %ptr), !insn.addr !7
  ret void, !insn.addr !7
}

define i64* @function_1070(i32 %size) local_unnamed_addr {
dec_label_pc_1070:
  %0 = call i64* @malloc(i32 %size), !insn.addr !8
  ret i64* %0, !insn.addr !8
}

define i64 @entry_point(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i64 %arg6) local_unnamed_addr {
dec_label_pc_1080:
  %stack_var_8 = alloca i64, align 8
  %0 = trunc i64 %arg6 to i32, !insn.addr !9
  %1 = bitcast i64* %stack_var_8 to i8**, !insn.addr !9
  %2 = inttoptr i64 %arg3 to void ()*, !insn.addr !9
  %3 = call i32 @__libc_start_main(i64 4457, i32 %0, i8** nonnull %1, void ()* null, void ()* null, void ()* %2), !insn.addr !9
  %4 = call i64 @__asm_hlt(), !insn.addr !10
  unreachable, !insn.addr !10
}

define i64 @function_10b0() local_unnamed_addr {
dec_label_pc_10b0:
  ret i64 ptrtoint (i64* @global_var_4010 to i64), !insn.addr !11
}

define i64 @function_10e0() local_unnamed_addr {
dec_label_pc_10e0:
  ret i64 0, !insn.addr !12
}

define i64 @function_1120() local_unnamed_addr {
dec_label_pc_1120:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = load i8, i8* bitcast (i64* @global_var_4010 to i8*), align 8, !insn.addr !13
  %3 = icmp eq i8 %2, 0, !insn.addr !13
  %4 = icmp eq i1 %3, false, !insn.addr !14
  br i1 %4, label %dec_label_pc_1158, label %dec_label_pc_112d, !insn.addr !14

dec_label_pc_112d:                                ; preds = %dec_label_pc_1120
  %5 = load i64, i64* inttoptr (i64 16376 to i64*), align 8, !insn.addr !15
  %6 = icmp eq i64 %5, 0, !insn.addr !15
  br i1 %6, label %dec_label_pc_1147, label %dec_label_pc_113b, !insn.addr !16

dec_label_pc_113b:                                ; preds = %dec_label_pc_112d
  %7 = load i64, i64* inttoptr (i64 16392 to i64*), align 8, !insn.addr !17
  %8 = inttoptr i64 %7 to i64*, !insn.addr !18
  call void @__cxa_finalize(i64* %8), !insn.addr !18
  br label %dec_label_pc_1147, !insn.addr !18

dec_label_pc_1147:                                ; preds = %dec_label_pc_113b, %dec_label_pc_112d
  %9 = call i64 @function_10b0(), !insn.addr !19
  store i8 1, i8* bitcast (i64* @global_var_4010 to i8*), align 8, !insn.addr !20
  ret i64 %9, !insn.addr !21

dec_label_pc_1158:                                ; preds = %dec_label_pc_1120
  ret i64 %1, !insn.addr !22
}

define i64 @function_1160() local_unnamed_addr {
dec_label_pc_1160:
  %0 = call i64 @function_10e0(), !insn.addr !23
  ret i64 %0, !insn.addr !23
}

define i64 @function_1169() local_unnamed_addr {
dec_label_pc_1169:
  %0 = call i64* @malloc(i32 4)
  call void @free(i64* %0), !insn.addr !24
  call void @free(i64* %0), !insn.addr !25
  ret i64 0, !insn.addr !26

; uselistorder directives
  uselistorder i64* %0, { 1, 0 }
  uselistorder i64 0, { 1, 4, 2, 0, 5, 3 }
  uselistorder void (i64*)* @free, { 1, 0, 2 }
}

define i64 @function_11c4() local_unnamed_addr {
dec_label_pc_11c4:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !27

; uselistorder directives
  uselistorder i32 1, { 1, 0, 3, 2 }
}

declare void @free(i64*) local_unnamed_addr

declare i64* @malloc(i32) local_unnamed_addr

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

!0 = !{i64 4096}
!1 = !{i64 4104}
!2 = !{i64 4111}
!3 = !{i64 4114}
!4 = !{i64 4116}
!5 = !{i64 4122}
!6 = !{i64 4180}
!7 = !{i64 4196}
!8 = !{i64 4212}
!9 = !{i64 4255}
!10 = !{i64 4261}
!11 = !{i64 4312}
!12 = !{i64 4376}
!13 = !{i64 4388}
!14 = !{i64 4395}
!15 = !{i64 4398}
!16 = !{i64 4409}
!17 = !{i64 4411}
!18 = !{i64 4418}
!19 = !{i64 4423}
!20 = !{i64 4428}
!21 = !{i64 4436}
!22 = !{i64 4440}
!23 = !{i64 4452}
!24 = !{i64 4521}
!25 = !{i64 4533}
!26 = !{i64 4544}
!27 = !{i64 4560}
