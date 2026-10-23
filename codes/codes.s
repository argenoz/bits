; ModuleID = 'codes.c'
source_filename = "codes.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32"

@tmp = hidden global [6 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone
define hidden void @just_init() #0 {
  %1 = alloca i8, align 1
  store i8 6, i8* %1, align 1
  br label %2

2:                                                ; preds = %8, %0
  %3 = load i8, i8* %1, align 1
  %4 = add i8 %3, -1
  store i8 %4, i8* %1, align 1
  %5 = load i8, i8* %1, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* @tmp, i32 0, i32 %6
  store i8 0, i8* %7, align 1
  br label %8

8:                                                ; preds = %2
  %9 = load i8, i8* %1, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %2, label %11, !llvm.loop !2

11:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @summ(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %10, %12
  %14 = shl i32 %13, 1
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %6, align 1
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = xor i32 %17, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  %22 = load i8, i8* %6, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i8, i8* %6, align 1
  store i8 %25, i8* %4, align 1
  %26 = load i8, i8* %7, align 1
  store i8 %26, i8* %5, align 1
  br label %29

27:                                               ; preds = %8
  %28 = load i8, i8* %7, align 1
  store i8 %28, i8* %3, align 1
  br label %30

29:                                               ; preds = %24
  br i1 true, label %8, label %30

30:                                               ; preds = %27, %29
  %31 = load i8, i8* %3, align 1
  ret i8 %31
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @neg(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = xor i32 %4, -1
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %2, align 1
  %7 = load i8, i8* %2, align 1
  %8 = call zeroext i8 @summ(i8 noundef zeroext %7, i8 noundef zeroext 1)
  store i8 %8, i8* %2, align 1
  %9 = load i8, i8* %2, align 1
  ret i8 %9
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @diff(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = call zeroext i8 @neg(i8 noundef zeroext %5)
  store i8 %6, i8* %4, align 1
  %7 = load i8, i8* %3, align 1
  %8 = load i8, i8* %4, align 1
  %9 = call zeroext i8 @summ(i8 noundef zeroext %7, i8 noundef zeroext %8)
  ret i8 %9
}

; Function Attrs: noinline nounwind optnone
define hidden void @setA1() #0 {
  %1 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 0), align 1
  %2 = zext i8 %1 to i32
  %3 = shl i32 %2, 1
  %4 = or i32 %3, 1
  %5 = trunc i32 %4 to i8
  store i8 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 0), align 1
  ret void
}

; Function Attrs: noinline nounwind optnone
define hidden void @setA0() #0 {
  %1 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 0), align 1
  %2 = zext i8 %1 to i32
  %3 = shl i32 %2, 1
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 0), align 1
  ret void
}

; Function Attrs: noinline nounwind optnone
define hidden void @setB1() #0 {
  %1 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 1), align 1
  %2 = zext i8 %1 to i32
  %3 = shl i32 %2, 1
  %4 = or i32 %3, 1
  %5 = trunc i32 %4 to i8
  store i8 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 1), align 1
  ret void
}

; Function Attrs: noinline nounwind optnone
define hidden void @setB0() #0 {
  %1 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 1), align 1
  %2 = zext i8 %1 to i32
  %3 = shl i32 %2, 1
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 1), align 1
  ret void
}

; Function Attrs: noinline nounwind optnone
define hidden void @input() #0 {
  call void @just_init()
  call void bitcast (void (...)* @inputA to void ()*)()
  call void bitcast (void (...)* @inputB to void ()*)()
  ret void
}

declare void @inputA(...) #1

declare void @inputB(...) #1

; Function Attrs: noinline nounwind optnone
define hidden void @output(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = call zeroext i8 @invert(i8 noundef zeroext %3)
  store i8 %4, i8* %2, align 1
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i8, i8* %2, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void bitcast (void (...)* @output1 to void ()*)()
  br label %12

11:                                               ; preds = %5
  call void bitcast (void (...)* @output0 to void ()*)()
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i32
  %15 = ashr i32 %14, 1
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %2, align 1
  br label %17

17:                                               ; preds = %12
  %18 = load i8, i8* %2, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %5, label %20, !llvm.loop !4

20:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @invert(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = and i32 %4, 15
  %6 = shl i32 %5, 4
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 240
  %10 = ashr i32 %9, 4
  %11 = or i32 %6, %10
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 51
  %16 = shl i32 %15, 2
  %17 = load i8, i8* %2, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 204
  %20 = ashr i32 %19, 2
  %21 = or i32 %16, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %2, align 1
  %23 = load i8, i8* %2, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 85
  %26 = shl i32 %25, 1
  %27 = load i8, i8* %2, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 170
  %30 = ashr i32 %29, 1
  %31 = or i32 %26, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %2, align 1
  %33 = load i8, i8* %2, align 1
  ret i8 %33
}

declare void @output1(...) #1

declare void @output0(...) #1

; Function Attrs: noinline nounwind optnone
define hidden void @do_work() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 0), align 1
  %4 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 1), align 1
  %5 = call zeroext i8 @summ(i8 noundef zeroext %3, i8 noundef zeroext %4)
  %6 = zext i8 %5 to i32
  store i32 %6, i32* %1, align 4
  call void bitcast (void (...)* @prepair to void ()*)()
  %7 = load i32, i32* %1, align 4
  %8 = trunc i32 %7 to i8
  call void @output(i8 noundef zeroext %8)
  call void bitcast (void (...)* @set_summ to void ()*)()
  %9 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 0), align 1
  %10 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 1), align 1
  %11 = call zeroext i8 @diff(i8 noundef zeroext %9, i8 noundef zeroext %10)
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %1, align 4
  call void bitcast (void (...)* @prepair to void ()*)()
  %13 = load i32, i32* %1, align 4
  %14 = trunc i32 %13 to i8
  call void @output(i8 noundef zeroext %14)
  call void bitcast (void (...)* @set_summ to void ()*)()
  %15 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 0), align 1
  %16 = call zeroext i8 @neg(i8 noundef zeroext %15)
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %1, align 4
  call void bitcast (void (...)* @prepair to void ()*)()
  %18 = load i32, i32* %1, align 4
  %19 = trunc i32 %18 to i8
  call void @output(i8 noundef zeroext %19)
  call void bitcast (void (...)* @set_neg to void ()*)()
  %20 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @tmp, i32 0, i32 0), align 1
  %21 = call zeroext i8 @invert(i8 noundef zeroext %20)
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %1, align 4
  call void bitcast (void (...)* @prepair to void ()*)()
  %23 = load i32, i32* %1, align 4
  %24 = trunc i32 %23 to i8
  call void @output(i8 noundef zeroext %24)
  call void bitcast (void (...)* @set_inv to void ()*)()
  ret void
}

declare void @prepair(...) #1

declare void @set_summ(...) #1

declare void @set_neg(...) #1

declare void @set_inv(...) #1

attributes #0 = { noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-prototype" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
