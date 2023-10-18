; ModuleID = 'dfexample.ll'
source_filename = "dfexample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = icmp ne i32* undef, null
  br i1 %1, label %2, label %5

2:                                                ; preds = %0
  %3 = call i8* @malloc(i64 noundef 4)
  %4 = bitcast i8* %3 to i32*
  br label %8

5:                                                ; preds = %0
  %6 = call i8* @malloc(i64 noundef 4)
  %7 = bitcast i8* %6 to i32*
  br label %8

8:                                                ; preds = %5, %2
  %.0 = phi i32* [ %4, %2 ], [ %7, %5 ]
  %9 = bitcast i32* %.0 to i8*
  call void @free(i8* noundef %9)
  %10 = bitcast i32* %.0 to i8*
  call void @free(i8* noundef %10)
  ret i32 0
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
