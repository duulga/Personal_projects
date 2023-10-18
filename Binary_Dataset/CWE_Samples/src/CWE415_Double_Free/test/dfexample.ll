; ModuleID = 'dfexample.c'
source_filename = "dfexample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i8* @malloc(i64 noundef 4)
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %2, align 8
  br label %12

9:                                                ; preds = %0
  %10 = call i8* @malloc(i64 noundef 4)
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %2, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32*, i32** %2, align 8
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* noundef %15)
  %16 = load i32*, i32** %3, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* noundef %17)
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
