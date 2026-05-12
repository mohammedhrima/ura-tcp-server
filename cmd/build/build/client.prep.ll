; ModuleID = '/ura-lang/src/tests/projects/ura-tcp-server/cmd/build/client.prep.ura'
source_filename = "/ura-lang/src/tests/projects/ura-tcp-server/cmd/build/client.prep.ura"
target triple = "x86_64-pc-linux-gnu"

%struct.String = type { i8*, i32, i32 }
%struct.SockAddr = type { i8* }
%struct.Client = type { i32, i8*, i8* }

@STR0 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STR1 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@STR2 = private unnamed_addr constant [9 x i8] c"\1B[0;90m[\00", align 1
@STR3 = private unnamed_addr constant [7 x i8] c"]\1B[0m \00", align 1
@STR4 = private unnamed_addr constant [6 x i8] c"\1B[0m \00", align 1
@STR5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STR6 = private unnamed_addr constant [8 x i8] c"\1B[0;36m\00", align 1
@STR7 = private unnamed_addr constant [123 x i8] c"  \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97\E2\96\88\E2\96\88\E2\95\97     \E2\96\88\E2\96\88\E2\95\97\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97\E2\96\88\E2\96\88\E2\96\88\E2\95\97   \E2\96\88\E2\96\88\E2\95\97\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97\0A\00", align 1
@STR8 = private unnamed_addr constant [127 x i8] c" \E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\E2\96\88\E2\96\88\E2\95\91     \E2\96\88\E2\96\88\E2\95\91\E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97  \E2\96\88\E2\96\88\E2\95\91\E2\95\9A\E2\95\90\E2\95\90\E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\95\9D\0A\00", align 1
@STR9 = private unnamed_addr constant [103 x i8] c" \E2\96\88\E2\96\88\E2\95\91     \E2\96\88\E2\96\88\E2\95\91     \E2\96\88\E2\96\88\E2\95\91\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97  \E2\96\88\E2\96\88\E2\95\94\E2\96\88\E2\96\88\E2\95\97 \E2\96\88\E2\96\88\E2\95\91   \E2\96\88\E2\96\88\E2\95\91   \0A\00", align 1
@STR10 = private unnamed_addr constant [105 x i8] c" \E2\96\88\E2\96\88\E2\95\91     \E2\96\88\E2\96\88\E2\95\91     \E2\96\88\E2\96\88\E2\95\91\E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\95\9D  \E2\96\88\E2\96\88\E2\95\91\E2\95\9A\E2\96\88\E2\96\88\E2\95\97\E2\96\88\E2\96\88\E2\95\91   \E2\96\88\E2\96\88\E2\95\91   \0A\00", align 1
@STR11 = private unnamed_addr constant [127 x i8] c" \E2\95\9A\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97\E2\96\88\E2\96\88\E2\95\91\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97\E2\96\88\E2\96\88\E2\95\91 \E2\95\9A\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\91   \E2\96\88\E2\96\88\E2\95\91   \0A\00", align 1
@STR12 = private unnamed_addr constant [123 x i8] c"  \E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\E2\95\9A\E2\95\90\E2\95\9D\E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\E2\95\9A\E2\95\90\E2\95\9D  \E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\9D   \E2\95\9A\E2\95\90\E2\95\9D   \0A\00", align 1
@STR13 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@STR14 = private unnamed_addr constant [148 x i8] c"\1B[0;90m\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\1B[0m\0A\00", align 1
@STR15 = private unnamed_addr constant [83 x i8] c"\1B[0;36m  URA Chat Client  \1B[0;90m\E2\94\82\1B[0m connecting to \1B[0;33m127.0.0.1:17000\1B[0m\0A\00", align 1
@STR16 = private unnamed_addr constant [149 x i8] c"\1B[0;90m\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\1B[0m\0A\0A\00", align 1
@STR17 = private unnamed_addr constant [8 x i8] c"\1B[0;31m\00", align 1
@STR18 = private unnamed_addr constant [9 x i8] c"[client]\00", align 1
@STR19 = private unnamed_addr constant [15 x i8] c"connect failed\00", align 1
@STR20 = private unnamed_addr constant [8 x i8] c"\1B[0;36m\00", align 1
@STR21 = private unnamed_addr constant [9 x i8] c"[client]\00", align 1
@STR22 = private unnamed_addr constant [20 x i8] c"connected to server\00", align 1
@STR23 = private unnamed_addr constant [8 x i8] c"\1B[0;31m\00", align 1
@STR24 = private unnamed_addr constant [9 x i8] c"[client]\00", align 1
@STR25 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@STR26 = private unnamed_addr constant [6 x i8] c"\0D\1B[2K\00", align 1
@STR27 = private unnamed_addr constant [8 x i8] c"\1B[0;33m\00", align 1
@STR28 = private unnamed_addr constant [9 x i8] c"[server]\00", align 1
@STR29 = private unnamed_addr constant [23 x i8] c"\1B[0;36m[client]\1B[0m > \00", align 1
@STR30 = private unnamed_addr constant [23 x i8] c"\1B[0;36m[client]\1B[0m > \00", align 1
@STR31 = private unnamed_addr constant [6 x i8] c"/exit\00", align 1
@STR32 = private unnamed_addr constant [23 x i8] c"\1B[0;36m[client]\1B[0m > \00", align 1

define void @String.delete(%struct.String* %0) {
entry:
  ret void
}

define void @SockAddr.delete(%struct.SockAddr* %0) {
entry:
  ret void
}

define void @Client.delete(%struct.Client* %0) {
entry:
  ret void
}

declare i32 @write(i32, i8*, i32)

declare i32 @read(i32, i8*, i32)

declare i8* @calloc(i64, i64)

declare i8* @realloc(i8*, i32)

declare void @free(i8*)

declare i32 @socket(i32, i32, i32)

declare i32 @connect(i32, i8*, i32)

declare void @exit(i32)

declare i32 @atoi(i8*)

declare i32 @strlen(i8*)

declare i32 @strcmp(i8*, i8*)

declare i32 @strncmp(i8*, i8*, i32)

declare i8* @strcpy(i8*, i8*)

declare void @bzero(i8*, i64)

define i8* @strjoin(i8* %left, i8* %right) !dbg !4 {
entry:
  %left1 = alloca i8*, align 8, !dbg !7
  %right2 = alloca i8*, align 8, !dbg !7
  %len1 = alloca i32, align 4, !dbg !7
  %len2 = alloca i32, align 4, !dbg !7
  %str = alloca i8*, align 8, !dbg !7
  %i = alloca i32, align 4, !dbg !7
  %j = alloca i32, align 4, !dbg !7
  store i8* %left, i8** %left1, align 8, !dbg !7
  store i8* %right, i8** %right2, align 8, !dbg !7
  store i32 0, i32* %len1, align 4, !dbg !7
  store i32 0, i32* %len1, align 4, !dbg !7
  store i32 0, i32* %len2, align 4, !dbg !7
  store i32 0, i32* %len2, align 4, !dbg !7
  br label %if.start, !dbg !7

if.start:                                         ; preds = %entry
  %left3 = load i8*, i8** %left1, align 8, !dbg !7
  %NEQ = icmp ne i8* %left3, null, !dbg !7
  br i1 %NEQ, label %if.then, label %if.end, !dbg !7

if.end:                                           ; preds = %if.then, %if.start
  br label %if.start5, !dbg !8

if.then:                                          ; preds = %if.start
  %left4 = load i8*, i8** %left1, align 8, !dbg !8
  %strlen = call i32 @strlen(i8* %left4), !dbg !8
  store i32 %strlen, i32* %len1, align 4, !dbg !8
  br label %if.end, !dbg !8

if.start5:                                        ; preds = %if.end
  %right8 = load i8*, i8** %right2, align 8, !dbg !8
  %NEQ9 = icmp ne i8* %right8, null, !dbg !8
  br i1 %NEQ9, label %if.then7, label %if.end6, !dbg !8

if.end6:                                          ; preds = %if.then7, %if.start5
  store i8* null, i8** %str, align 8, !dbg !7
  %len112 = load i32, i32* %len1, align 4, !dbg !9
  %len213 = load i32, i32* %len2, align 4, !dbg !9
  %ADD = add i32 %len112, %len213, !dbg !9
  %ADD14 = add i32 %ADD, 1, !dbg !9
  %as = sext i32 %ADD14 to i64, !dbg !9
  %calloc = call i8* @calloc(i64 %as, i64 1), !dbg !9
  store i8* %calloc, i8** %str, align 8, !dbg !9
  store i32 0, i32* %i, align 4, !dbg !7
  store i32 0, i32* %i, align 4, !dbg !7
  br label %while.start, !dbg !7

if.then7:                                         ; preds = %if.start5
  %right10 = load i8*, i8** %right2, align 8, !dbg !10
  %strlen11 = call i32 @strlen(i8* %right10), !dbg !10
  store i32 %strlen11, i32* %len2, align 4, !dbg !10
  br label %if.end6, !dbg !10

while.start:                                      ; preds = %while.then, %if.end6
  %i15 = load i32, i32* %i, align 4, !dbg !7
  %len116 = load i32, i32* %len1, align 4, !dbg !7
  %LT = icmp slt i32 %i15, %len116, !dbg !7
  br i1 %LT, label %while.then, label %while.end, !dbg !7

while.then:                                       ; preds = %while.start
  %str17 = load i8*, i8** %str, align 8, !dbg !11
  %i18 = load i32, i32* %i, align 4, !dbg !11
  %ACCESS = getelementptr i8, i8* %str17, i32 %i18, !dbg !11
  %left19 = load i8*, i8** %left1, align 8, !dbg !11
  %i20 = load i32, i32* %i, align 4, !dbg !11
  %ACCESS21 = getelementptr i8, i8* %left19, i32 %i20, !dbg !11
  %ACC = load i8, i8* %ACCESS21, align 1, !dbg !11
  store i8 %ACC, i8* %ACCESS, align 1, !dbg !11
  %i22 = load i32, i32* %i, align 4, !dbg !11
  %ADD23 = add i32 %i22, 1, !dbg !11
  store i32 %ADD23, i32* %i, align 4, !dbg !11
  br label %while.start, !dbg !11

while.end:                                        ; preds = %while.start
  store i32 0, i32* %j, align 4, !dbg !7
  store i32 0, i32* %j, align 4, !dbg !7
  br label %while.start24, !dbg !7

while.start24:                                    ; preds = %while.then25, %while.end
  %j27 = load i32, i32* %j, align 4, !dbg !7
  %len228 = load i32, i32* %len2, align 4, !dbg !7
  %LT29 = icmp slt i32 %j27, %len228, !dbg !7
  br i1 %LT29, label %while.then25, label %while.end26, !dbg !7

while.then25:                                     ; preds = %while.start24
  %i30 = load i32, i32* %i, align 4, !dbg !12
  %j31 = load i32, i32* %j, align 4, !dbg !12
  %ADD32 = add i32 %i30, %j31, !dbg !12
  %str33 = load i8*, i8** %str, align 8, !dbg !12
  %ACCESS34 = getelementptr i8, i8* %str33, i32 %ADD32, !dbg !12
  %right35 = load i8*, i8** %right2, align 8, !dbg !12
  %j36 = load i32, i32* %j, align 4, !dbg !12
  %ACCESS37 = getelementptr i8, i8* %right35, i32 %j36, !dbg !12
  %ACC38 = load i8, i8* %ACCESS37, align 1, !dbg !12
  store i8 %ACC38, i8* %ACCESS34, align 1, !dbg !12
  %j39 = load i32, i32* %j, align 4, !dbg !12
  %ADD40 = add i32 %j39, 1, !dbg !12
  store i32 %ADD40, i32* %j, align 4, !dbg !12
  br label %while.start24, !dbg !12

while.end26:                                      ; preds = %while.start24
  %str41 = load i8*, i8** %str, align 8, !dbg !12
  ret i8* %str41, !dbg !12
}

define void @String_assign(%struct.String* %self, i8* %str) !dbg !13 {
entry:
  %self1 = alloca %struct.String*, align 8, !dbg !14
  %str2 = alloca i8*, align 8, !dbg !14
  %len = alloca i32, align 4, !dbg !14
  store %struct.String* %self, %struct.String** %self1, align 8, !dbg !14
  store i8* %str, i8** %str2, align 8, !dbg !14
  br label %if.start, !dbg !14

if.start:                                         ; preds = %entry
  %str3 = load i8*, i8** %str2, align 8, !dbg !14
  %EQ = icmp eq i8* %str3, null, !dbg !14
  br i1 %EQ, label %if.then, label %if.end, !dbg !14

if.end:                                           ; preds = %if.then, %if.start
  store i32 0, i32* %len, align 4, !dbg !14
  %str4 = load i8*, i8** %str2, align 8, !dbg !15
  %strlen = call i32 @strlen(i8* %str4), !dbg !15
  store i32 %strlen, i32* %len, align 4, !dbg !15
  br label %if.start5, !dbg !15

if.then:                                          ; preds = %if.start
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @STR0, i32 0, i32 0), i8** %str2, align 8, !dbg !14
  br label %if.end, !dbg !14

if.start5:                                        ; preds = %if.end
  %self8 = load %struct.String*, %struct.String** %self1, align 8, !dbg !15
  %value = getelementptr %struct.String, %struct.String* %self8, i32 0, i32 0, !dbg !15
  %DOT = load i8*, i8** %value, align 8, !dbg !15
  %EQ9 = icmp eq i8* %DOT, null, !dbg !15
  %self10 = load %struct.String*, %struct.String** %self1, align 8, !dbg !15
  %size = getelementptr %struct.String, %struct.String* %self10, i32 0, i32 2, !dbg !15
  %DOT11 = load i32, i32* %size, align 4, !dbg !15
  %len12 = load i32, i32* %len, align 4, !dbg !15
  %LE = icmp sle i32 %DOT11, %len12, !dbg !15
  %OR = or i1 %EQ9, %LE, !dbg !15
  br i1 %OR, label %if.then7, label %if.end6, !dbg !15

if.end6:                                          ; preds = %while.end, %if.start5
  %self38 = load %struct.String*, %struct.String** %self1, align 8, !dbg !16
  %value39 = getelementptr %struct.String, %struct.String* %self38, i32 0, i32 0, !dbg !16
  %DOT40 = load i8*, i8** %value39, align 8, !dbg !16
  %str41 = load i8*, i8** %str2, align 8, !dbg !16
  %strcpy = call i8* @strcpy(i8* %DOT40, i8* %str41), !dbg !16
  %self42 = load %struct.String*, %struct.String** %self1, align 8, !dbg !17
  %value43 = getelementptr %struct.String, %struct.String* %self42, i32 0, i32 0, !dbg !17
  %DOT44 = load i8*, i8** %value43, align 8, !dbg !17
  %len45 = load i32, i32* %len, align 4, !dbg !17
  %idx = sext i32 %len45 to i64, !dbg !17
  %ADD = getelementptr i8, i8* %DOT44, i64 %idx, !dbg !17
  %self46 = load %struct.String*, %struct.String** %self1, align 8, !dbg !17
  %size47 = getelementptr %struct.String, %struct.String* %self46, i32 0, i32 2, !dbg !17
  %DOT48 = load i32, i32* %size47, align 4, !dbg !17
  %len49 = load i32, i32* %len, align 4, !dbg !17
  %SUB = sub i32 %DOT48, %len49, !dbg !17
  %as = sext i32 %SUB to i64, !dbg !17
  call void @bzero(i8* %ADD, i64 %as), !dbg !17
  %self50 = load %struct.String*, %struct.String** %self1, align 8, !dbg !17
  %count = getelementptr %struct.String, %struct.String* %self50, i32 0, i32 1, !dbg !17
  %len51 = load i32, i32* %len, align 4, !dbg !17
  store i32 %len51, i32* %count, align 4, !dbg !17
  ret void, !dbg !17

if.then7:                                         ; preds = %if.start5
  br label %if.start13, !dbg !15

if.start13:                                       ; preds = %if.then7
  %self16 = load %struct.String*, %struct.String** %self1, align 8, !dbg !15
  %size17 = getelementptr %struct.String, %struct.String* %self16, i32 0, i32 2, !dbg !15
  %DOT18 = load i32, i32* %size17, align 4, !dbg !15
  %EQ19 = icmp eq i32 %DOT18, 0, !dbg !15
  br i1 %EQ19, label %if.then15, label %if.end14, !dbg !15

if.end14:                                         ; preds = %if.then15, %if.start13
  br label %while.start, !dbg !15

if.then15:                                        ; preds = %if.start13
  %self20 = load %struct.String*, %struct.String** %self1, align 8, !dbg !15
  %size21 = getelementptr %struct.String, %struct.String* %self20, i32 0, i32 2, !dbg !15
  store i32 10, i32* %size21, align 4, !dbg !15
  br label %if.end14, !dbg !15

while.start:                                      ; preds = %while.then, %if.end14
  %self22 = load %struct.String*, %struct.String** %self1, align 8, !dbg !15
  %size23 = getelementptr %struct.String, %struct.String* %self22, i32 0, i32 2, !dbg !15
  %DOT24 = load i32, i32* %size23, align 4, !dbg !15
  %len25 = load i32, i32* %len, align 4, !dbg !15
  %LE26 = icmp sle i32 %DOT24, %len25, !dbg !15
  br i1 %LE26, label %while.then, label %while.end, !dbg !15

while.then:                                       ; preds = %while.start
  %self27 = load %struct.String*, %struct.String** %self1, align 8, !dbg !15
  %size28 = getelementptr %struct.String, %struct.String* %self27, i32 0, i32 2, !dbg !15
  %DOT29 = load i32, i32* %size28, align 4, !dbg !15
  %MUL = mul i32 %DOT29, 2, !dbg !15
  store i32 %MUL, i32* %size28, align 4, !dbg !15
  br label %while.start, !dbg !15

while.end:                                        ; preds = %while.start
  %self30 = load %struct.String*, %struct.String** %self1, align 8, !dbg !15
  %value31 = getelementptr %struct.String, %struct.String* %self30, i32 0, i32 0, !dbg !15
  %self32 = load %struct.String*, %struct.String** %self1, align 8, !dbg !18
  %value33 = getelementptr %struct.String, %struct.String* %self32, i32 0, i32 0, !dbg !18
  %DOT34 = load i8*, i8** %value33, align 8, !dbg !18
  %self35 = load %struct.String*, %struct.String** %self1, align 8, !dbg !18
  %size36 = getelementptr %struct.String, %struct.String* %self35, i32 0, i32 2, !dbg !18
  %DOT37 = load i32, i32* %size36, align 4, !dbg !18
  %realloc = call i8* @realloc(i8* %DOT34, i32 %DOT37), !dbg !18
  store i8* %realloc, i8** %value31, align 8, !dbg !18
  br label %if.end6, !dbg !18
}

define void @String_join(%struct.String* %self, i8* %str) !dbg !19 {
entry:
  %self1 = alloca %struct.String*, align 8, !dbg !20
  %str2 = alloca i8*, align 8, !dbg !20
  %res = alloca i8*, align 8, !dbg !20
  store %struct.String* %self, %struct.String** %self1, align 8, !dbg !20
  store i8* %str, i8** %str2, align 8, !dbg !20
  br label %if.start, !dbg !20

if.start:                                         ; preds = %entry
  %str3 = load i8*, i8** %str2, align 8, !dbg !20
  %EQ = icmp eq i8* %str3, null, !dbg !20
  br i1 %EQ, label %if.then, label %if.end, !dbg !20

if.end:                                           ; preds = %if.start
  store i8* null, i8** %res, align 8, !dbg !20
  %self4 = load %struct.String*, %struct.String** %self1, align 8, !dbg !21
  %value = getelementptr %struct.String, %struct.String* %self4, i32 0, i32 0, !dbg !21
  %DOT = load i8*, i8** %value, align 8, !dbg !21
  %str5 = load i8*, i8** %str2, align 8, !dbg !21
  %strjoin = call i8* @strjoin(i8* %DOT, i8* %str5), !dbg !21
  store i8* %strjoin, i8** %res, align 8, !dbg !21
  %ref_arg = load %struct.String*, %struct.String** %self1, align 8, !dbg !22
  %res6 = load i8*, i8** %res, align 8, !dbg !22
  call void @String_assign(%struct.String* %ref_arg, i8* %res6), !dbg !22
  %res7 = load i8*, i8** %res, align 8, !dbg !23
  call void @free(i8* %res7), !dbg !23
  ret void, !dbg !23

if.then:                                          ; preds = %if.start
  ret void, !dbg !20
}

define void @String_push(%struct.String* %self, i8 %c) !dbg !24 {
entry:
  %self1 = alloca %struct.String*, align 8, !dbg !25
  %c2 = alloca i8, align 1, !dbg !25
  store %struct.String* %self, %struct.String** %self1, align 8, !dbg !25
  store i8 %c, i8* %c2, align 1, !dbg !25
  br label %if.start, !dbg !25

if.start:                                         ; preds = %entry
  %self3 = load %struct.String*, %struct.String** %self1, align 8, !dbg !25
  %count = getelementptr %struct.String, %struct.String* %self3, i32 0, i32 1, !dbg !25
  %DOT = load i32, i32* %count, align 4, !dbg !25
  %ADD = add i32 %DOT, 1, !dbg !25
  %self4 = load %struct.String*, %struct.String** %self1, align 8, !dbg !25
  %size = getelementptr %struct.String, %struct.String* %self4, i32 0, i32 2, !dbg !25
  %DOT5 = load i32, i32* %size, align 4, !dbg !25
  %GE = icmp sge i32 %ADD, %DOT5, !dbg !25
  br i1 %GE, label %if.then, label %if.end, !dbg !25

if.end:                                           ; preds = %if.end7, %if.start
  %self24 = load %struct.String*, %struct.String** %self1, align 8, !dbg !26
  %value25 = getelementptr %struct.String, %struct.String* %self24, i32 0, i32 0, !dbg !26
  %self26 = load %struct.String*, %struct.String** %self1, align 8, !dbg !26
  %count27 = getelementptr %struct.String, %struct.String* %self26, i32 0, i32 1, !dbg !26
  %DOT28 = load i8*, i8** %value25, align 8, !dbg !26
  %DOT29 = load i32, i32* %count27, align 4, !dbg !26
  %ACCESS = getelementptr i8, i8* %DOT28, i32 %DOT29, !dbg !26
  %c30 = load i8, i8* %c2, align 1, !dbg !26
  store i8 %c30, i8* %ACCESS, align 1, !dbg !26
  %self31 = load %struct.String*, %struct.String** %self1, align 8, !dbg !26
  %count32 = getelementptr %struct.String, %struct.String* %self31, i32 0, i32 1, !dbg !26
  %DOT33 = load i32, i32* %count32, align 4, !dbg !26
  %ADD34 = add i32 %DOT33, 1, !dbg !26
  store i32 %ADD34, i32* %count32, align 4, !dbg !26
  %self35 = load %struct.String*, %struct.String** %self1, align 8, !dbg !27
  %value36 = getelementptr %struct.String, %struct.String* %self35, i32 0, i32 0, !dbg !27
  %self37 = load %struct.String*, %struct.String** %self1, align 8, !dbg !27
  %count38 = getelementptr %struct.String, %struct.String* %self37, i32 0, i32 1, !dbg !27
  %DOT39 = load i8*, i8** %value36, align 8, !dbg !27
  %DOT40 = load i32, i32* %count38, align 4, !dbg !27
  %ACCESS41 = getelementptr i8, i8* %DOT39, i32 %DOT40, !dbg !27
  store i8 0, i8* %ACCESS41, align 1, !dbg !27
  ret void, !dbg !27

if.then:                                          ; preds = %if.start
  br label %if.start6, !dbg !25

if.start6:                                        ; preds = %if.then
  %self9 = load %struct.String*, %struct.String** %self1, align 8, !dbg !25
  %size10 = getelementptr %struct.String, %struct.String* %self9, i32 0, i32 2, !dbg !25
  %DOT11 = load i32, i32* %size10, align 4, !dbg !25
  %EQ = icmp eq i32 %DOT11, 0, !dbg !25
  br i1 %EQ, label %if.then8, label %if.else, !dbg !25

if.end7:                                          ; preds = %if.else, %if.then8
  %self17 = load %struct.String*, %struct.String** %self1, align 8, !dbg !25
  %value = getelementptr %struct.String, %struct.String* %self17, i32 0, i32 0, !dbg !25
  %self18 = load %struct.String*, %struct.String** %self1, align 8, !dbg !28
  %value19 = getelementptr %struct.String, %struct.String* %self18, i32 0, i32 0, !dbg !28
  %DOT20 = load i8*, i8** %value19, align 8, !dbg !28
  %self21 = load %struct.String*, %struct.String** %self1, align 8, !dbg !28
  %size22 = getelementptr %struct.String, %struct.String* %self21, i32 0, i32 2, !dbg !28
  %DOT23 = load i32, i32* %size22, align 4, !dbg !28
  %realloc = call i8* @realloc(i8* %DOT20, i32 %DOT23), !dbg !28
  store i8* %realloc, i8** %value, align 8, !dbg !28
  br label %if.end, !dbg !28

if.then8:                                         ; preds = %if.start6
  %self12 = load %struct.String*, %struct.String** %self1, align 8, !dbg !25
  %size13 = getelementptr %struct.String, %struct.String* %self12, i32 0, i32 2, !dbg !25
  store i32 10, i32* %size13, align 4, !dbg !25
  br label %if.end7, !dbg !25

if.else:                                          ; preds = %if.start6
  %self14 = load %struct.String*, %struct.String** %self1, align 8, !dbg !25
  %size15 = getelementptr %struct.String, %struct.String* %self14, i32 0, i32 2, !dbg !25
  %DOT16 = load i32, i32* %size15, align 4, !dbg !25
  %MUL = mul i32 %DOT16, 2, !dbg !25
  store i32 %MUL, i32* %size15, align 4, !dbg !25
  br label %if.end7, !dbg !25
}

define %struct.String @String_new() !dbg !29 {
entry:
  %s = alloca %struct.String, align 8, !dbg !30
  store %struct.String zeroinitializer, %struct.String* %s, align 8, !dbg !30
  %size = getelementptr %struct.String, %struct.String* %s, i32 0, i32 2, !dbg !30
  store i32 10, i32* %size, align 4, !dbg !30
  %value = getelementptr %struct.String, %struct.String* %s, i32 0, i32 0, !dbg !30
  %calloc = call i8* @calloc(i64 10, i64 1), !dbg !31
  store i8* %calloc, i8** %value, align 8, !dbg !31
  %s1 = load %struct.String, %struct.String* %s, align 8, !dbg !31
  ret %struct.String %s1, !dbg !31
}

define i32 @String_find(%struct.String* %self, i8* %needle) !dbg !32 {
entry:
  %self1 = alloca %struct.String*, align 8, !dbg !33
  %needle2 = alloca i8*, align 8, !dbg !33
  %i = alloca i32, align 4, !dbg !33
  %nlen = alloca i32, align 4, !dbg !33
  store %struct.String* %self, %struct.String** %self1, align 8, !dbg !33
  store i8* %needle, i8** %needle2, align 8, !dbg !33
  br label %if.start, !dbg !33

if.start:                                         ; preds = %entry
  %needle3 = load i8*, i8** %needle2, align 8, !dbg !33
  %EQ = icmp eq i8* %needle3, null, !dbg !33
  br i1 %EQ, label %if.then, label %if.end, !dbg !33

if.end:                                           ; preds = %if.start
  store i32 0, i32* %i, align 4, !dbg !33
  store i32 0, i32* %i, align 4, !dbg !33
  store i32 0, i32* %nlen, align 4, !dbg !33
  %needle4 = load i8*, i8** %needle2, align 8, !dbg !34
  %strlen = call i32 @strlen(i8* %needle4), !dbg !34
  store i32 %strlen, i32* %nlen, align 4, !dbg !34
  br label %if.start5, !dbg !34

if.then:                                          ; preds = %if.start
  ret i32 -1, !dbg !33

if.start5:                                        ; preds = %if.end
  %nlen8 = load i32, i32* %nlen, align 4, !dbg !34
  %EQ9 = icmp eq i32 %nlen8, 0, !dbg !34
  br i1 %EQ9, label %if.then7, label %if.end6, !dbg !34

if.end6:                                          ; preds = %if.start5
  br label %while.start, !dbg !34

if.then7:                                         ; preds = %if.start5
  ret i32 0, !dbg !34

while.start:                                      ; preds = %if.end14, %if.end6
  %self10 = load %struct.String*, %struct.String** %self1, align 8, !dbg !34
  %count = getelementptr %struct.String, %struct.String* %self10, i32 0, i32 1, !dbg !34
  %DOT = load i32, i32* %count, align 4, !dbg !34
  %nlen11 = load i32, i32* %nlen, align 4, !dbg !34
  %SUB = sub i32 %DOT, %nlen11, !dbg !34
  %i12 = load i32, i32* %i, align 4, !dbg !34
  %LE = icmp sle i32 %i12, %SUB, !dbg !34
  br i1 %LE, label %while.then, label %while.end, !dbg !34

while.then:                                       ; preds = %while.start
  br label %if.start13, !dbg !34

while.end:                                        ; preds = %while.start
  ret i32 -1, !dbg !35

if.start13:                                       ; preds = %while.then
  %self16 = load %struct.String*, %struct.String** %self1, align 8, !dbg !35
  %value = getelementptr %struct.String, %struct.String* %self16, i32 0, i32 0, !dbg !35
  %DOT17 = load i8*, i8** %value, align 8, !dbg !35
  %i18 = load i32, i32* %i, align 4, !dbg !35
  %idx = sext i32 %i18 to i64, !dbg !35
  %ADD = getelementptr i8, i8* %DOT17, i64 %idx, !dbg !35
  %needle19 = load i8*, i8** %needle2, align 8, !dbg !35
  %nlen20 = load i32, i32* %nlen, align 4, !dbg !35
  %strncmp = call i32 @strncmp(i8* %ADD, i8* %needle19, i32 %nlen20), !dbg !35
  %EQ21 = icmp eq i32 %strncmp, 0, !dbg !35
  br i1 %EQ21, label %if.then15, label %if.end14, !dbg !35

if.end14:                                         ; preds = %if.start13
  %i23 = load i32, i32* %i, align 4, !dbg !35
  %ADD24 = add i32 %i23, 1, !dbg !35
  store i32 %ADD24, i32* %i, align 4, !dbg !35
  br label %while.start, !dbg !35

if.then15:                                        ; preds = %if.start13
  %i22 = load i32, i32* %i, align 4, !dbg !35
  ret i32 %i22, !dbg !35
}

define %struct.String @String_substr(%struct.String* %self, i32 %start, i32 %length) !dbg !36 {
entry:
  %self1 = alloca %struct.String*, align 8, !dbg !37
  %start2 = alloca i32, align 4, !dbg !37
  %length3 = alloca i32, align 4, !dbg !37
  %res = alloca %struct.String, align 8, !dbg !37
  %end = alloca i32, align 4, !dbg !37
  %i = alloca i32, align 4, !dbg !37
  store %struct.String* %self, %struct.String** %self1, align 8, !dbg !37
  store i32 %start, i32* %start2, align 4, !dbg !37
  store i32 %length, i32* %length3, align 4, !dbg !37
  store %struct.String zeroinitializer, %struct.String* %res, align 8, !dbg !37
  %String_new = call %struct.String @String_new(), !dbg !38
  %tmp_struct = alloca %struct.String, align 8, !dbg !38
  store %struct.String %String_new, %struct.String* %tmp_struct, align 8, !dbg !38
  store %struct.String %String_new, %struct.String* %res, align 8, !dbg !38
  br label %if.start, !dbg !38

if.start:                                         ; preds = %entry
  %start4 = load i32, i32* %start2, align 4, !dbg !38
  %LT = icmp slt i32 %start4, 0, !dbg !38
  %self5 = load %struct.String*, %struct.String** %self1, align 8, !dbg !38
  %count = getelementptr %struct.String, %struct.String* %self5, i32 0, i32 1, !dbg !38
  %start6 = load i32, i32* %start2, align 4, !dbg !38
  %DOT = load i32, i32* %count, align 4, !dbg !38
  %GE = icmp sge i32 %start6, %DOT, !dbg !38
  %OR = or i1 %LT, %GE, !dbg !38
  br i1 %OR, label %if.then, label %if.end, !dbg !38

if.end:                                           ; preds = %if.start
  store i32 0, i32* %end, align 4, !dbg !37
  %start8 = load i32, i32* %start2, align 4, !dbg !37
  %length9 = load i32, i32* %length3, align 4, !dbg !37
  %ADD = add i32 %start8, %length9, !dbg !37
  store i32 %ADD, i32* %end, align 4, !dbg !37
  br label %if.start10, !dbg !37

if.then:                                          ; preds = %if.start
  %res7 = load %struct.String, %struct.String* %res, align 8, !dbg !38
  ret %struct.String %res7, !dbg !38

if.start10:                                       ; preds = %if.end
  %self13 = load %struct.String*, %struct.String** %self1, align 8, !dbg !37
  %count14 = getelementptr %struct.String, %struct.String* %self13, i32 0, i32 1, !dbg !37
  %end15 = load i32, i32* %end, align 4, !dbg !37
  %DOT16 = load i32, i32* %count14, align 4, !dbg !37
  %GT = icmp sgt i32 %end15, %DOT16, !dbg !37
  br i1 %GT, label %if.then12, label %if.end11, !dbg !37

if.end11:                                         ; preds = %if.then12, %if.start10
  store i32 0, i32* %i, align 4, !dbg !37
  %start20 = load i32, i32* %start2, align 4, !dbg !37
  store i32 %start20, i32* %i, align 4, !dbg !37
  br label %while.start, !dbg !37

if.then12:                                        ; preds = %if.start10
  %self17 = load %struct.String*, %struct.String** %self1, align 8, !dbg !37
  %count18 = getelementptr %struct.String, %struct.String* %self17, i32 0, i32 1, !dbg !37
  %DOT19 = load i32, i32* %count18, align 4, !dbg !37
  store i32 %DOT19, i32* %end, align 4, !dbg !37
  br label %if.end11, !dbg !37

while.start:                                      ; preds = %while.then, %if.end11
  %i21 = load i32, i32* %i, align 4, !dbg !37
  %end22 = load i32, i32* %end, align 4, !dbg !37
  %LT23 = icmp slt i32 %i21, %end22, !dbg !37
  br i1 %LT23, label %while.then, label %while.end, !dbg !37

while.then:                                       ; preds = %while.start
  %ref_arg = load %struct.String*, %struct.String* %res, align 8, !dbg !39
  %self24 = load %struct.String*, %struct.String** %self1, align 8, !dbg !39
  %value = getelementptr %struct.String, %struct.String* %self24, i32 0, i32 0, !dbg !39
  %DOT25 = load i8*, i8** %value, align 8, !dbg !39
  %i26 = load i32, i32* %i, align 4, !dbg !39
  %ACCESS = getelementptr i8, i8* %DOT25, i32 %i26, !dbg !39
  %ACC = load i8, i8* %ACCESS, align 1, !dbg !39
  call void @String_push(%struct.String* %ref_arg, i8 %ACC), !dbg !39
  %i27 = load i32, i32* %i, align 4, !dbg !39
  %ADD28 = add i32 %i27, 1, !dbg !39
  store i32 %ADD28, i32* %i, align 4, !dbg !39
  br label %while.start, !dbg !39

while.end:                                        ; preds = %while.start
  call void @String.delete(%struct.String* %tmp_struct), !dbg !39
  %res29 = load %struct.String, %struct.String* %res, align 8, !dbg !39
  ret %struct.String %res29, !dbg !39
}

define void @String_assign_chars(%struct.String* %self, i8* %str) !dbg !40 {
entry:
  %self1 = alloca %struct.String*, align 8, !dbg !41
  %str2 = alloca i8*, align 8, !dbg !41
  store %struct.String* %self, %struct.String** %self1, align 8, !dbg !41
  store i8* %str, i8** %str2, align 8, !dbg !41
  %ref_arg = load %struct.String*, %struct.String** %self1, align 8, !dbg !42
  %str3 = load i8*, i8** %str2, align 8, !dbg !42
  call void @String_assign(%struct.String* %ref_arg, i8* %str3), !dbg !42
  ret void, !dbg !42
}

declare i64 @time(i8*)

declare i8* @localtime(i64*)

declare i64 @strftime(i8*, i64, i8*, i8*)

declare i32 @fork()

declare i32 @close(i32)

define void @log(i8* %msg) !dbg !43 {
entry:
  %msg1 = alloca i8*, align 8, !dbg !44
  store i8* %msg, i8** %msg1, align 8, !dbg !44
  %msg2 = load i8*, i8** %msg1, align 8, !dbg !45
  %msg3 = load i8*, i8** %msg1, align 8, !dbg !45
  %strlen = call i32 @strlen(i8* %msg3), !dbg !45
  %write = call i32 @write(i32 1, i8* %msg2, i32 %strlen), !dbg !45
  ret void, !dbg !45
}

define i8* @get_time() !dbg !46 {
entry:
  %buf = alloca i8*, align 8, !dbg !47
  %t = alloca i64, align 8, !dbg !47
  %tm = alloca i8*, align 8, !dbg !47
  store i8* null, i8** %buf, align 8, !dbg !47
  %heap = call i8* @calloc(i64 16, i64 1), !dbg !47
  store i8* %heap, i8** %buf, align 8, !dbg !47
  store i64 0, i64* %t, align 4, !dbg !47
  %time = call i64 @time(i8* null), !dbg !48
  store i64 %time, i64* %t, align 4, !dbg !48
  store i8* null, i8** %tm, align 8, !dbg !47
  %localtime = call i8* @localtime(i64* %t), !dbg !49
  store i8* %localtime, i8** %tm, align 8, !dbg !49
  %buf1 = load i8*, i8** %buf, align 8, !dbg !50
  %tm2 = load i8*, i8** %tm, align 8, !dbg !50
  %strftime = call i64 @strftime(i8* %buf1, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR1, i32 0, i32 0), i8* %tm2), !dbg !50
  %buf3 = load i8*, i8** %buf, align 8, !dbg !50
  ret i8* %buf3, !dbg !50
}

define void @log_ts(i8* %color, i8* %tag, i8* %msg) !dbg !51 {
entry:
  %color1 = alloca i8*, align 8, !dbg !52
  %tag2 = alloca i8*, align 8, !dbg !52
  %msg3 = alloca i8*, align 8, !dbg !52
  %tbuf = alloca i8*, align 8, !dbg !52
  store i8* %color, i8** %color1, align 8, !dbg !52
  store i8* %tag, i8** %tag2, align 8, !dbg !52
  store i8* %msg, i8** %msg3, align 8, !dbg !52
  store i8* null, i8** %tbuf, align 8, !dbg !52
  %get_time = call i8* @get_time(), !dbg !53
  store i8* %get_time, i8** %tbuf, align 8, !dbg !53
  call void @log(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR2, i32 0, i32 0)), !dbg !54
  %tbuf4 = load i8*, i8** %tbuf, align 8, !dbg !55
  call void @log(i8* %tbuf4), !dbg !55
  call void @log(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @STR3, i32 0, i32 0)), !dbg !56
  %color5 = load i8*, i8** %color1, align 8, !dbg !57
  call void @log(i8* %color5), !dbg !57
  %tag6 = load i8*, i8** %tag2, align 8, !dbg !58
  call void @log(i8* %tag6), !dbg !58
  call void @log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @STR4, i32 0, i32 0)), !dbg !59
  %msg7 = load i8*, i8** %msg3, align 8, !dbg !60
  call void @log(i8* %msg7), !dbg !60
  call void @log(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @STR5, i32 0, i32 0)), !dbg !61
  %tbuf8 = load i8*, i8** %tbuf, align 8, !dbg !62
  call void @free(i8* %tbuf8), !dbg !62
  ret void, !dbg !62
}

define void @SockAddr_set_port(%struct.SockAddr* %self, i32 %port) !dbg !63 {
entry:
  %self1 = alloca %struct.SockAddr*, align 8, !dbg !64
  %port2 = alloca i32, align 4, !dbg !64
  store %struct.SockAddr* %self, %struct.SockAddr** %self1, align 8, !dbg !64
  store i32 %port, i32* %port2, align 4, !dbg !64
  %self3 = load %struct.SockAddr*, %struct.SockAddr** %self1, align 8, !dbg !65
  %data = getelementptr %struct.SockAddr, %struct.SockAddr* %self3, i32 0, i32 0, !dbg !65
  %DOT = load i8*, i8** %data, align 8, !dbg !65
  %ACCESS = getelementptr i8, i8* %DOT, i32 2, !dbg !65
  %port4 = load i32, i32* %port2, align 4, !dbg !65
  %RSHIFT = ashr i32 %port4, 8, !dbg !65
  %as = trunc i32 %RSHIFT to i8, !dbg !65
  store i8 %as, i8* %ACCESS, align 1, !dbg !65
  %self5 = load %struct.SockAddr*, %struct.SockAddr** %self1, align 8, !dbg !66
  %data6 = getelementptr %struct.SockAddr, %struct.SockAddr* %self5, i32 0, i32 0, !dbg !66
  %DOT7 = load i8*, i8** %data6, align 8, !dbg !66
  %ACCESS8 = getelementptr i8, i8* %DOT7, i32 3, !dbg !66
  %port9 = load i32, i32* %port2, align 4, !dbg !66
  %BAND = and i32 %port9, 255, !dbg !66
  %as10 = trunc i32 %BAND to i8, !dbg !66
  store i8 %as10, i8* %ACCESS8, align 1, !dbg !66
  ret void, !dbg !66
}

define void @SockAddr_set_ip(%struct.SockAddr* %self, i32 %a, i32 %b, i32 %c, i32 %d) !dbg !67 {
entry:
  %self1 = alloca %struct.SockAddr*, align 8, !dbg !68
  %a2 = alloca i32, align 4, !dbg !68
  %b3 = alloca i32, align 4, !dbg !68
  %c4 = alloca i32, align 4, !dbg !68
  %d5 = alloca i32, align 4, !dbg !68
  store %struct.SockAddr* %self, %struct.SockAddr** %self1, align 8, !dbg !68
  store i32 %a, i32* %a2, align 4, !dbg !68
  store i32 %b, i32* %b3, align 4, !dbg !68
  store i32 %c, i32* %c4, align 4, !dbg !68
  store i32 %d, i32* %d5, align 4, !dbg !68
  %self6 = load %struct.SockAddr*, %struct.SockAddr** %self1, align 8, !dbg !69
  %data = getelementptr %struct.SockAddr, %struct.SockAddr* %self6, i32 0, i32 0, !dbg !69
  %DOT = load i8*, i8** %data, align 8, !dbg !69
  %ACCESS = getelementptr i8, i8* %DOT, i32 4, !dbg !69
  %a7 = load i32, i32* %a2, align 4, !dbg !69
  %as = trunc i32 %a7 to i8, !dbg !69
  store i8 %as, i8* %ACCESS, align 1, !dbg !69
  %self8 = load %struct.SockAddr*, %struct.SockAddr** %self1, align 8, !dbg !70
  %data9 = getelementptr %struct.SockAddr, %struct.SockAddr* %self8, i32 0, i32 0, !dbg !70
  %DOT10 = load i8*, i8** %data9, align 8, !dbg !70
  %ACCESS11 = getelementptr i8, i8* %DOT10, i32 5, !dbg !70
  %b12 = load i32, i32* %b3, align 4, !dbg !70
  %as13 = trunc i32 %b12 to i8, !dbg !70
  store i8 %as13, i8* %ACCESS11, align 1, !dbg !70
  %self14 = load %struct.SockAddr*, %struct.SockAddr** %self1, align 8, !dbg !71
  %data15 = getelementptr %struct.SockAddr, %struct.SockAddr* %self14, i32 0, i32 0, !dbg !71
  %DOT16 = load i8*, i8** %data15, align 8, !dbg !71
  %ACCESS17 = getelementptr i8, i8* %DOT16, i32 6, !dbg !71
  %c18 = load i32, i32* %c4, align 4, !dbg !71
  %as19 = trunc i32 %c18 to i8, !dbg !71
  store i8 %as19, i8* %ACCESS17, align 1, !dbg !71
  %self20 = load %struct.SockAddr*, %struct.SockAddr** %self1, align 8, !dbg !72
  %data21 = getelementptr %struct.SockAddr, %struct.SockAddr* %self20, i32 0, i32 0, !dbg !72
  %DOT22 = load i8*, i8** %data21, align 8, !dbg !72
  %ACCESS23 = getelementptr i8, i8* %DOT22, i32 7, !dbg !72
  %d24 = load i32, i32* %d5, align 4, !dbg !72
  %as25 = trunc i32 %d24 to i8, !dbg !72
  store i8 %as25, i8* %ACCESS23, align 1, !dbg !72
  ret void, !dbg !72
}

define void @SockAddr_delete(%struct.SockAddr* %self) !dbg !73 {
entry:
  %self1 = alloca %struct.SockAddr*, align 8, !dbg !74
  store %struct.SockAddr* %self, %struct.SockAddr** %self1, align 8, !dbg !74
  %self2 = load %struct.SockAddr*, %struct.SockAddr** %self1, align 8, !dbg !75
  %data = getelementptr %struct.SockAddr, %struct.SockAddr* %self2, i32 0, i32 0, !dbg !75
  %DOT = load i8*, i8** %data, align 8, !dbg !75
  call void @free(i8* %DOT), !dbg !75
  ret void, !dbg !75
}

define void @banner() !dbg !76 {
entry:
  call void @log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR6, i32 0, i32 0)), !dbg !77
  call void @log(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @STR7, i32 0, i32 0)), !dbg !78
  call void @log(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @STR8, i32 0, i32 0)), !dbg !79
  call void @log(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @STR9, i32 0, i32 0)), !dbg !80
  call void @log(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @STR10, i32 0, i32 0)), !dbg !81
  call void @log(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @STR11, i32 0, i32 0)), !dbg !82
  call void @log(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @STR12, i32 0, i32 0)), !dbg !83
  call void @log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @STR13, i32 0, i32 0)), !dbg !84
  call void @log(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @STR14, i32 0, i32 0)), !dbg !85
  call void @log(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @STR15, i32 0, i32 0)), !dbg !86
  call void @log(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @STR16, i32 0, i32 0)), !dbg !87
  ret void, !dbg !87
}

define void @Client_delete(%struct.Client* %self) !dbg !88 {
entry:
  %self1 = alloca %struct.Client*, align 8, !dbg !89
  store %struct.Client* %self, %struct.Client** %self1, align 8, !dbg !89
  %self2 = load %struct.Client*, %struct.Client** %self1, align 8, !dbg !90
  %fd = getelementptr %struct.Client, %struct.Client* %self2, i32 0, i32 0, !dbg !90
  %DOT = load i32, i32* %fd, align 4, !dbg !90
  %close = call i32 @close(i32 %DOT), !dbg !90
  %self3 = load %struct.Client*, %struct.Client** %self1, align 8, !dbg !91
  %buf = getelementptr %struct.Client, %struct.Client* %self3, i32 0, i32 1, !dbg !91
  %DOT4 = load i8*, i8** %buf, align 8, !dbg !91
  call void @free(i8* %DOT4), !dbg !91
  %self5 = load %struct.Client*, %struct.Client** %self1, align 8, !dbg !92
  %rbuf = getelementptr %struct.Client, %struct.Client* %self5, i32 0, i32 2, !dbg !92
  %DOT6 = load i8*, i8** %rbuf, align 8, !dbg !92
  call void @free(i8* %DOT6), !dbg !92
  ret void, !dbg !92
}

define i32 @main() !dbg !93 {
entry:
  %addr = alloca %struct.SockAddr, align 8, !dbg !94
  %cli = alloca %struct.Client, align 8, !dbg !94
  %r = alloca i32, align 4, !dbg !94
  %pid = alloca i32, align 4, !dbg !94
  call void @banner(), !dbg !94
  store %struct.SockAddr zeroinitializer, %struct.SockAddr* %addr, align 8, !dbg !94
  %ref_arg = load %struct.SockAddr*, %struct.SockAddr* %addr, align 8, !dbg !95
  call void @SockAddr_set_port(%struct.SockAddr* %ref_arg, i32 17000), !dbg !95
  %ref_arg1 = load %struct.SockAddr*, %struct.SockAddr* %addr, align 8, !dbg !96
  call void @SockAddr_set_ip(%struct.SockAddr* %ref_arg1, i32 127, i32 0, i32 0, i32 1), !dbg !96
  store %struct.Client zeroinitializer, %struct.Client* %cli, align 8, !dbg !94
  br label %if.start, !dbg !94

if.start:                                         ; preds = %entry
  %fd = getelementptr %struct.Client, %struct.Client* %cli, i32 0, i32 0, !dbg !97
  %DOT = load i32, i32* %fd, align 4, !dbg !97
  %data = getelementptr %struct.SockAddr, %struct.SockAddr* %addr, i32 0, i32 0, !dbg !97
  %DOT2 = load i8*, i8** %data, align 8, !dbg !97
  %connect = call i32 @connect(i32 %DOT, i8* %DOT2, i32 16), !dbg !97
  %LT = icmp slt i32 %connect, 0, !dbg !97
  br i1 %LT, label %if.then, label %if.end, !dbg !97

if.end:                                           ; preds = %if.start
  call void @log_ts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR21, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @STR22, i32 0, i32 0)), !dbg !98
  store i32 0, i32* %r, align 4, !dbg !94
  store i32 0, i32* %r, align 4, !dbg !94
  store i32 0, i32* %pid, align 4, !dbg !94
  %fork = call i32 @fork(), !dbg !99
  store i32 %fork, i32* %pid, align 4, !dbg !99
  br label %if.start3, !dbg !99

if.then:                                          ; preds = %if.start
  call void @log_ts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @STR19, i32 0, i32 0)), !dbg !100
  ret i32 1, !dbg !100

if.start3:                                        ; preds = %if.end
  %pid6 = load i32, i32* %pid, align 4, !dbg !99
  %EQ = icmp eq i32 %pid6, 0, !dbg !99
  br i1 %EQ, label %if.then5, label %if.end4, !dbg !99

if.end4:                                          ; preds = %if.start3
  call void @log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @STR30, i32 0, i32 0)), !dbg !101
  br label %while.start19, !dbg !101

if.then5:                                         ; preds = %if.start3
  br label %while.start, !dbg !99

while.start:                                      ; preds = %if.end11, %if.then5
  br i1 true, label %while.then, label %while.end, !dbg !99

while.then:                                       ; preds = %while.start
  %fd7 = getelementptr %struct.Client, %struct.Client* %cli, i32 0, i32 0, !dbg !102
  %DOT8 = load i32, i32* %fd7, align 4, !dbg !102
  %rbuf = getelementptr %struct.Client, %struct.Client* %cli, i32 0, i32 2, !dbg !102
  %DOT9 = load i8*, i8** %rbuf, align 8, !dbg !102
  %read = call i32 @read(i32 %DOT8, i8* %DOT9, i32 1023), !dbg !102
  store i32 %read, i32* %r, align 4, !dbg !102
  br label %if.start10, !dbg !102

while.end:                                        ; preds = %if.then12, %while.start
  ret i32 0, !dbg !103

if.start10:                                       ; preds = %while.then
  %r13 = load i32, i32* %r, align 4, !dbg !102
  %LE = icmp sle i32 %r13, 0, !dbg !102
  br i1 %LE, label %if.then12, label %if.end11, !dbg !102

if.end11:                                         ; preds = %if.start10
  %rbuf14 = getelementptr %struct.Client, %struct.Client* %cli, i32 0, i32 2, !dbg !104
  %DOT15 = load i8*, i8** %rbuf14, align 8, !dbg !104
  %r16 = load i32, i32* %r, align 4, !dbg !104
  %ACCESS = getelementptr i8, i8* %DOT15, i32 %r16, !dbg !104
  store i8 0, i8* %ACCESS, align 1, !dbg !104
  call void @log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @STR26, i32 0, i32 0)), !dbg !105
  %rbuf17 = getelementptr %struct.Client, %struct.Client* %cli, i32 0, i32 2, !dbg !106
  %DOT18 = load i8*, i8** %rbuf17, align 8, !dbg !106
  call void @log_ts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR28, i32 0, i32 0), i8* %DOT18), !dbg !106
  call void @log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @STR29, i32 0, i32 0)), !dbg !103
  br label %while.start, !dbg !103

if.then12:                                        ; preds = %if.start10
  call void @log_ts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR24, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @STR25, i32 0, i32 0)), !dbg !107
  br label %while.end, !dbg !107

while.start19:                                    ; preds = %if.end40, %if.end4
  br i1 true, label %while.then20, label %while.end21, !dbg !101

while.then20:                                     ; preds = %while.start19
  %buf = getelementptr %struct.Client, %struct.Client* %cli, i32 0, i32 1, !dbg !108
  %DOT22 = load i8*, i8** %buf, align 8, !dbg !108
  %read23 = call i32 @read(i32 0, i8* %DOT22, i32 1023), !dbg !108
  store i32 %read23, i32* %r, align 4, !dbg !108
  br label %if.start24, !dbg !108

while.end21:                                      ; preds = %if.then41, %if.then26, %while.start19
  %ref_arg45 = load %struct.SockAddr*, %struct.SockAddr* %addr, align 8, !dbg !109
  call void @SockAddr_delete(%struct.SockAddr* %ref_arg45), !dbg !109
  %ref_arg46 = load %struct.Client*, %struct.Client* %cli, align 8, !dbg !110
  call void @Client_delete(%struct.Client* %ref_arg46), !dbg !110
  call void @SockAddr.delete(%struct.SockAddr* %addr), !dbg !110
  call void @Client.delete(%struct.Client* %cli), !dbg !110
  ret i32 0, !dbg !110

if.start24:                                       ; preds = %while.then20
  %r27 = load i32, i32* %r, align 4, !dbg !108
  %LE28 = icmp sle i32 %r27, 0, !dbg !108
  br i1 %LE28, label %if.then26, label %if.end25, !dbg !108

if.end25:                                         ; preds = %if.start24
  %buf29 = getelementptr %struct.Client, %struct.Client* %cli, i32 0, i32 1, !dbg !111
  %r30 = load i32, i32* %r, align 4, !dbg !111
  %SUB = sub i32 %r30, 1, !dbg !111
  %DOT31 = load i8*, i8** %buf29, align 8, !dbg !111
  %ACCESS32 = getelementptr i8, i8* %DOT31, i32 %SUB, !dbg !111
  store i8 0, i8* %ACCESS32, align 1, !dbg !111
  %fd33 = getelementptr %struct.Client, %struct.Client* %cli, i32 0, i32 0, !dbg !112
  %DOT34 = load i32, i32* %fd33, align 4, !dbg !112
  %buf35 = getelementptr %struct.Client, %struct.Client* %cli, i32 0, i32 1, !dbg !112
  %DOT36 = load i8*, i8** %buf35, align 8, !dbg !112
  %r37 = load i32, i32* %r, align 4, !dbg !112
  %SUB38 = sub i32 %r37, 1, !dbg !112
  %write = call i32 @write(i32 %DOT34, i8* %DOT36, i32 %SUB38), !dbg !112
  br label %if.start39, !dbg !112

if.then26:                                        ; preds = %if.start24
  br label %while.end21, !dbg !108

if.start39:                                       ; preds = %if.end25
  %buf42 = getelementptr %struct.Client, %struct.Client* %cli, i32 0, i32 1, !dbg !113
  %DOT43 = load i8*, i8** %buf42, align 8, !dbg !113
  %strcmp = call i32 @strcmp(i8* %DOT43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @STR31, i32 0, i32 0)), !dbg !113
  %EQ44 = icmp eq i32 %strcmp, 0, !dbg !113
  br i1 %EQ44, label %if.then41, label %if.end40, !dbg !113

if.end40:                                         ; preds = %if.start39
  call void @log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @STR32, i32 0, i32 0)), !dbg !114
  br label %while.start19, !dbg !114

if.then41:                                        ; preds = %if.start39
  br label %while.end21, !dbg !113
}

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = distinct !DICompileUnit(language: DW_LANG_C, file: !3, producer: "ura", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DIFile(filename: "client.prep.ura", directory: "/ura-lang/src/tests/projects/ura-tcp-server/cmd/build")
!4 = distinct !DISubprogram(name: "strjoin", linkageName: "strjoin", scope: null, file: !3, line: 453, type: !5, scopeLine: 453, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 453, scope: !4)
!8 = !DILocation(line: 457, scope: !4)
!9 = !DILocation(line: 460, scope: !4)
!10 = !DILocation(line: 459, scope: !4)
!11 = !DILocation(line: 463, scope: !4)
!12 = !DILocation(line: 467, scope: !4)
!13 = distinct !DISubprogram(name: "String_assign", linkageName: "String_assign", scope: null, file: !3, line: 480, type: !5, scopeLine: 480, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!14 = !DILocation(line: 480, scope: !13)
!15 = !DILocation(line: 483, scope: !13)
!16 = !DILocation(line: 490, scope: !13)
!17 = !DILocation(line: 491, scope: !13)
!18 = !DILocation(line: 489, scope: !13)
!19 = distinct !DISubprogram(name: "String_join", linkageName: "String_join", scope: null, file: !3, line: 495, type: !5, scopeLine: 495, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!20 = !DILocation(line: 495, scope: !19)
!21 = !DILocation(line: 498, scope: !19)
!22 = !DILocation(line: 499, scope: !19)
!23 = !DILocation(line: 500, scope: !19)
!24 = distinct !DISubprogram(name: "String_push", linkageName: "String_push", scope: null, file: !3, line: 508, type: !5, scopeLine: 508, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!25 = !DILocation(line: 508, scope: !24)
!26 = !DILocation(line: 515, scope: !24)
!27 = !DILocation(line: 517, scope: !24)
!28 = !DILocation(line: 514, scope: !24)
!29 = distinct !DISubprogram(name: "String_new", linkageName: "String_new", scope: null, file: !3, line: 528, type: !5, scopeLine: 528, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!30 = !DILocation(line: 528, scope: !29)
!31 = !DILocation(line: 531, scope: !29)
!32 = distinct !DISubprogram(name: "String_find", linkageName: "String_find", scope: null, file: !3, line: 577, type: !5, scopeLine: 577, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!33 = !DILocation(line: 577, scope: !32)
!34 = !DILocation(line: 581, scope: !32)
!35 = !DILocation(line: 585, scope: !32)
!36 = distinct !DISubprogram(name: "String_substr", linkageName: "String_substr", scope: null, file: !3, line: 610, type: !5, scopeLine: 610, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!37 = !DILocation(line: 610, scope: !36)
!38 = !DILocation(line: 611, scope: !36)
!39 = !DILocation(line: 619, scope: !36)
!40 = distinct !DISubprogram(name: "String_assign_chars", linkageName: "String_assign_chars", scope: null, file: !3, line: 704, type: !5, scopeLine: 704, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!41 = !DILocation(line: 704, scope: !40)
!42 = !DILocation(line: 705, scope: !40)
!43 = distinct !DISubprogram(name: "log", linkageName: "log", scope: null, file: !3, line: 847, type: !5, scopeLine: 847, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!44 = !DILocation(line: 847, scope: !43)
!45 = !DILocation(line: 848, scope: !43)
!46 = distinct !DISubprogram(name: "get_time", linkageName: "get_time", scope: null, file: !3, line: 851, type: !5, scopeLine: 851, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!47 = !DILocation(line: 851, scope: !46)
!48 = !DILocation(line: 853, scope: !46)
!49 = !DILocation(line: 854, scope: !46)
!50 = !DILocation(line: 855, scope: !46)
!51 = distinct !DISubprogram(name: "log_ts", linkageName: "log_ts", scope: null, file: !3, line: 858, type: !5, scopeLine: 858, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!52 = !DILocation(line: 858, scope: !51)
!53 = !DILocation(line: 859, scope: !51)
!54 = !DILocation(line: 860, scope: !51)
!55 = !DILocation(line: 861, scope: !51)
!56 = !DILocation(line: 862, scope: !51)
!57 = !DILocation(line: 863, scope: !51)
!58 = !DILocation(line: 864, scope: !51)
!59 = !DILocation(line: 865, scope: !51)
!60 = !DILocation(line: 866, scope: !51)
!61 = !DILocation(line: 867, scope: !51)
!62 = !DILocation(line: 868, scope: !51)
!63 = distinct !DISubprogram(name: "SockAddr_set_port", linkageName: "SockAddr_set_port", scope: null, file: !3, line: 893, type: !5, scopeLine: 893, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!64 = !DILocation(line: 893, scope: !63)
!65 = !DILocation(line: 894, scope: !63)
!66 = !DILocation(line: 895, scope: !63)
!67 = distinct !DISubprogram(name: "SockAddr_set_ip", linkageName: "SockAddr_set_ip", scope: null, file: !3, line: 898, type: !5, scopeLine: 898, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!68 = !DILocation(line: 898, scope: !67)
!69 = !DILocation(line: 899, scope: !67)
!70 = !DILocation(line: 900, scope: !67)
!71 = !DILocation(line: 901, scope: !67)
!72 = !DILocation(line: 902, scope: !67)
!73 = distinct !DISubprogram(name: "SockAddr_delete", linkageName: "SockAddr_delete", scope: null, file: !3, line: 905, type: !5, scopeLine: 905, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!74 = !DILocation(line: 905, scope: !73)
!75 = !DILocation(line: 906, scope: !73)
!76 = distinct !DISubprogram(name: "banner", linkageName: "banner", scope: null, file: !3, line: 909, type: !5, scopeLine: 909, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!77 = !DILocation(line: 910, scope: !76)
!78 = !DILocation(line: 911, scope: !76)
!79 = !DILocation(line: 912, scope: !76)
!80 = !DILocation(line: 913, scope: !76)
!81 = !DILocation(line: 914, scope: !76)
!82 = !DILocation(line: 915, scope: !76)
!83 = !DILocation(line: 916, scope: !76)
!84 = !DILocation(line: 917, scope: !76)
!85 = !DILocation(line: 918, scope: !76)
!86 = !DILocation(line: 919, scope: !76)
!87 = !DILocation(line: 920, scope: !76)
!88 = distinct !DISubprogram(name: "Client_delete", linkageName: "Client_delete", scope: null, file: !3, line: 937, type: !5, scopeLine: 937, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!89 = !DILocation(line: 937, scope: !88)
!90 = !DILocation(line: 938, scope: !88)
!91 = !DILocation(line: 939, scope: !88)
!92 = !DILocation(line: 940, scope: !88)
!93 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !3, line: 943, type: !5, scopeLine: 943, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!94 = !DILocation(line: 944, scope: !93)
!95 = !DILocation(line: 946, scope: !93)
!96 = !DILocation(line: 947, scope: !93)
!97 = !DILocation(line: 949, scope: !93)
!98 = !DILocation(line: 952, scope: !93)
!99 = !DILocation(line: 954, scope: !93)
!100 = !DILocation(line: 950, scope: !93)
!101 = !DILocation(line: 966, scope: !93)
!102 = !DILocation(line: 957, scope: !93)
!103 = !DILocation(line: 964, scope: !93)
!104 = !DILocation(line: 961, scope: !93)
!105 = !DILocation(line: 962, scope: !93)
!106 = !DILocation(line: 963, scope: !93)
!107 = !DILocation(line: 959, scope: !93)
!108 = !DILocation(line: 968, scope: !93)
!109 = !DILocation(line: 976, scope: !93)
!110 = !DILocation(line: 977, scope: !93)
!111 = !DILocation(line: 971, scope: !93)
!112 = !DILocation(line: 972, scope: !93)
!113 = !DILocation(line: 973, scope: !93)
!114 = !DILocation(line: 975, scope: !93)
