; ModuleID = '/ura-lang/src/tests/projects/ura-tcp-server/cmd/build/server.prep.ura'
source_filename = "/ura-lang/src/tests/projects/ura-tcp-server/cmd/build/server.prep.ura"
target triple = "x86_64-pc-linux-gnu"

%struct.String = type { i8*, i32, i32 }
%struct.SockAddr = type { i8* }
%struct.Server = type { i32, i32, i8*, i8* }

@STR0 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STR1 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@STR2 = private unnamed_addr constant [9 x i8] c"\1B[0;90m[\00", align 1
@STR3 = private unnamed_addr constant [7 x i8] c"]\1B[0m \00", align 1
@STR4 = private unnamed_addr constant [6 x i8] c"\1B[0m \00", align 1
@STR5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STR6 = private unnamed_addr constant [8 x i8] c"\1B[0;32m\00", align 1
@STR7 = private unnamed_addr constant [92 x i8] c"  \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97\E2\96\88\E2\96\88\E2\95\97  \E2\96\88\E2\96\88\E2\95\97 \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97 \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97\0A\00", align 1
@STR8 = private unnamed_addr constant [98 x i8] c" \E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\E2\96\88\E2\96\88\E2\95\91  \E2\96\88\E2\96\88\E2\95\91\E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\96\88\E2\96\88\E2\95\97\E2\95\9A\E2\95\90\E2\95\90\E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\95\9D\0A\00", align 1
@STR9 = private unnamed_addr constant [80 x i8] c" \E2\96\88\E2\96\88\E2\95\91     \E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\91\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\91   \E2\96\88\E2\96\88\E2\95\91   \0A\00", align 1
@STR10 = private unnamed_addr constant [80 x i8] c" \E2\96\88\E2\96\88\E2\95\91     \E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\96\88\E2\96\88\E2\95\91\E2\96\88\E2\96\88\E2\95\94\E2\95\90\E2\95\90\E2\96\88\E2\96\88\E2\95\91   \E2\96\88\E2\96\88\E2\95\91   \0A\00", align 1
@STR11 = private unnamed_addr constant [82 x i8] c" \E2\95\9A\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\96\88\E2\95\97\E2\96\88\E2\96\88\E2\95\91  \E2\96\88\E2\96\88\E2\95\91\E2\96\88\E2\96\88\E2\95\91  \E2\96\88\E2\96\88\E2\95\91   \E2\96\88\E2\96\88\E2\95\91   \0A\00", align 1
@STR12 = private unnamed_addr constant [80 x i8] c"  \E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\E2\95\9A\E2\95\90\E2\95\9D  \E2\95\9A\E2\95\90\E2\95\9D\E2\95\9A\E2\95\90\E2\95\9D  \E2\95\9A\E2\95\90\E2\95\9D   \E2\95\9A\E2\95\90\E2\95\9D   \0A\00", align 1
@STR13 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@STR14 = private unnamed_addr constant [112 x i8] c"\1B[0;90m\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\1B[0m\0A\00", align 1
@STR15 = private unnamed_addr constant [64 x i8] c"\1B[0;32m  URA Chat Server  \1B[0;90m\E2\94\82\1B[0m port \1B[0;33m17000\1B[0m\0A\00", align 1
@STR16 = private unnamed_addr constant [113 x i8] c"\1B[0;90m\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\E2\94\80\1B[0m\0A\0A\00", align 1
@STR17 = private unnamed_addr constant [52 x i8] c"\1B[0;35mWelcome to URA Secure Server\0AType /help\0A\1B[0m\00", align 1
@STR18 = private unnamed_addr constant [8 x i8] c"\1B[0;31m\00", align 1
@STR19 = private unnamed_addr constant [9 x i8] c"[server]\00", align 1
@STR20 = private unnamed_addr constant [20 x i8] c"client disconnected\00", align 1
@STR21 = private unnamed_addr constant [6 x i8] c"/help\00", align 1
@STR22 = private unnamed_addr constant [37 x i8] c"Commands: /help /time /whoami /exit\0A\00", align 1
@STR23 = private unnamed_addr constant [6 x i8] c"/time\00", align 1
@STR24 = private unnamed_addr constant [8 x i8] c"/whoami\00", align 1
@STR25 = private unnamed_addr constant [38 x i8] c"You are connected to URA TCP Engine.\0A\00", align 1
@STR26 = private unnamed_addr constant [6 x i8] c"/exit\00", align 1
@STR27 = private unnamed_addr constant [17 x i8] c"Session closed.\0A\00", align 1
@STR28 = private unnamed_addr constant [6 x i8] c"\0D\1B[2K\00", align 1
@STR29 = private unnamed_addr constant [8 x i8] c"\1B[0;36m\00", align 1
@STR30 = private unnamed_addr constant [9 x i8] c"[client]\00", align 1
@STR31 = private unnamed_addr constant [23 x i8] c"\1B[0;32m[server]\1B[0m > \00", align 1
@STR32 = private unnamed_addr constant [23 x i8] c"\1B[0;32m[server]\1B[0m > \00", align 1
@STR33 = private unnamed_addr constant [23 x i8] c"\1B[0;32m[server]\1B[0m > \00", align 1
@STR34 = private unnamed_addr constant [8 x i8] c"\1B[0;31m\00", align 1
@STR35 = private unnamed_addr constant [9 x i8] c"[server]\00", align 1
@STR36 = private unnamed_addr constant [12 x i8] c"bind failed\00", align 1
@STR37 = private unnamed_addr constant [8 x i8] c"\1B[0;32m\00", align 1
@STR38 = private unnamed_addr constant [9 x i8] c"[server]\00", align 1
@STR39 = private unnamed_addr constant [27 x i8] c"listening on port 17000...\00", align 1
@STR40 = private unnamed_addr constant [8 x i8] c"\1B[0;32m\00", align 1
@STR41 = private unnamed_addr constant [9 x i8] c"[server]\00", align 1
@STR42 = private unnamed_addr constant [17 x i8] c"client connected\00", align 1

define void @String.delete(%struct.String* %0) {
entry:
  ret void
}

define void @SockAddr.delete(%struct.SockAddr* %0) {
entry:
  ret void
}

define void @Server.delete(%struct.Server* %0) {
entry:
  ret void
}

declare i32 @write(i32, i8*, i32)

declare i32 @read(i32, i8*, i32)

declare i8* @calloc(i64, i64)

declare i8* @realloc(i8*, i32)

declare void @free(i8*)

declare i32 @socket(i32, i32, i32)

declare i32 @bind(i32, i8*, i32)

declare i32 @listen(i32, i32)

declare i32 @accept(i32, i8*, i8*)

declare i32 @setsockopt(i32, i32, i32, i8*, i32)

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
  call void @log(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @STR7, i32 0, i32 0)), !dbg !78
  call void @log(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @STR8, i32 0, i32 0)), !dbg !79
  call void @log(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @STR9, i32 0, i32 0)), !dbg !80
  call void @log(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @STR10, i32 0, i32 0)), !dbg !81
  call void @log(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @STR11, i32 0, i32 0)), !dbg !82
  call void @log(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @STR12, i32 0, i32 0)), !dbg !83
  call void @log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @STR13, i32 0, i32 0)), !dbg !84
  call void @log(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @STR14, i32 0, i32 0)), !dbg !85
  call void @log(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @STR15, i32 0, i32 0)), !dbg !86
  call void @log(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @STR16, i32 0, i32 0)), !dbg !87
  ret void, !dbg !87
}

define void @Server_set_reuse(%struct.Server* %self) !dbg !88 {
entry:
  %self1 = alloca %struct.Server*, align 8, !dbg !89
  %opt = alloca i8*, align 8, !dbg !89
  store %struct.Server* %self, %struct.Server** %self1, align 8, !dbg !89
  store i8* null, i8** %opt, align 8, !dbg !89
  %stack = alloca [4 x i8], align 1, !dbg !89
  %stack2 = getelementptr [4 x i8], [4 x i8]* %stack, i32 0, i32 0, !dbg !89
  store i8* %stack2, i8** %opt, align 8, !dbg !89
  %opt3 = load i8*, i8** %opt, align 8, !dbg !90
  %ACCESS = getelementptr i8, i8* %opt3, i32 0, !dbg !90
  store i8 1, i8* %ACCESS, align 1, !dbg !90
  %self4 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !91
  %fd = getelementptr %struct.Server, %struct.Server* %self4, i32 0, i32 0, !dbg !91
  %DOT = load i32, i32* %fd, align 4, !dbg !91
  %opt5 = load i8*, i8** %opt, align 8, !dbg !91
  %setsockopt = call i32 @setsockopt(i32 %DOT, i32 65535, i32 4, i8* %opt5, i32 4), !dbg !91
  %self6 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !92
  %fd7 = getelementptr %struct.Server, %struct.Server* %self6, i32 0, i32 0, !dbg !92
  %DOT8 = load i32, i32* %fd7, align 4, !dbg !92
  %opt9 = load i8*, i8** %opt, align 8, !dbg !92
  %setsockopt10 = call i32 @setsockopt(i32 %DOT8, i32 65535, i32 512, i8* %opt9, i32 4), !dbg !92
  ret void, !dbg !92
}

define void @Server_handle_client(%struct.Server* %self) !dbg !93 {
entry:
  %self1 = alloca %struct.Server*, align 8, !dbg !94
  %r = alloca i32, align 4, !dbg !94
  %pid2 = alloca i32, align 4, !dbg !94
  %welcome = alloca i8*, align 8, !dbg !94
  %msg = alloca i8*, align 8, !dbg !94
  %buff = alloca i8*, align 8, !dbg !94
  %bye = alloca i8*, align 8, !dbg !94
  store %struct.Server* %self, %struct.Server** %self1, align 8, !dbg !94
  store i32 0, i32* %r, align 4, !dbg !94
  store i32 0, i32* %r, align 4, !dbg !94
  store i32 0, i32* %pid2, align 4, !dbg !94
  %fork = call i32 @fork(), !dbg !95
  store i32 %fork, i32* %pid2, align 4, !dbg !95
  br label %if.start, !dbg !95

if.start:                                         ; preds = %entry
  %pid22 = load i32, i32* %pid2, align 4, !dbg !95
  %EQ = icmp eq i32 %pid22, 0, !dbg !95
  br i1 %EQ, label %if.then, label %if.end, !dbg !95

if.end:                                           ; preds = %if.start
  call void @log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @STR32, i32 0, i32 0)), !dbg !96
  br label %while.start78, !dbg !96

if.then:                                          ; preds = %if.start
  store i8* null, i8** %welcome, align 8, !dbg !94
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @STR17, i32 0, i32 0), i8** %welcome, align 8, !dbg !94
  %self3 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !97
  %client_fd = getelementptr %struct.Server, %struct.Server* %self3, i32 0, i32 1, !dbg !97
  %DOT = load i32, i32* %client_fd, align 4, !dbg !97
  %welcome4 = load i8*, i8** %welcome, align 8, !dbg !97
  %welcome5 = load i8*, i8** %welcome, align 8, !dbg !97
  %strlen = call i32 @strlen(i8* %welcome5), !dbg !97
  %write = call i32 @write(i32 %DOT, i8* %welcome4, i32 %strlen), !dbg !97
  br label %while.start, !dbg !97

while.start:                                      ; preds = %if.end20, %if.then
  br i1 true, label %while.then, label %while.end, !dbg !97

while.then:                                       ; preds = %while.start
  %self6 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !98
  %client_fd7 = getelementptr %struct.Server, %struct.Server* %self6, i32 0, i32 1, !dbg !98
  %DOT8 = load i32, i32* %client_fd7, align 4, !dbg !98
  %self9 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !98
  %buf = getelementptr %struct.Server, %struct.Server* %self9, i32 0, i32 2, !dbg !98
  %DOT10 = load i8*, i8** %buf, align 8, !dbg !98
  %read = call i32 @read(i32 %DOT8, i8* %DOT10, i32 1023), !dbg !98
  store i32 %read, i32* %r, align 4, !dbg !98
  store i8* null, i8** %msg, align 8, !dbg !94
  br label %if.start11, !dbg !94

while.end:                                        ; preds = %elif.then62, %if.then13, %while.start
  ret void, !dbg !99

if.start11:                                       ; preds = %while.then
  %r14 = load i32, i32* %r, align 4, !dbg !94
  %LE = icmp sle i32 %r14, 0, !dbg !94
  br i1 %LE, label %if.then13, label %if.end12, !dbg !94

if.end12:                                         ; preds = %if.start11
  %self15 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !100
  %buf16 = getelementptr %struct.Server, %struct.Server* %self15, i32 0, i32 2, !dbg !100
  %DOT17 = load i8*, i8** %buf16, align 8, !dbg !100
  %r18 = load i32, i32* %r, align 4, !dbg !100
  %ACCESS = getelementptr i8, i8* %DOT17, i32 %r18, !dbg !100
  store i8 0, i8* %ACCESS, align 1, !dbg !100
  br label %if.start19, !dbg !100

if.then13:                                        ; preds = %if.start11
  call void @log_ts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR19, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @STR20, i32 0, i32 0)), !dbg !101
  br label %while.end, !dbg !101

if.start19:                                       ; preds = %if.end12
  %self22 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !102
  %buf23 = getelementptr %struct.Server, %struct.Server* %self22, i32 0, i32 2, !dbg !102
  %DOT24 = load i8*, i8** %buf23, align 8, !dbg !102
  %strcmp = call i32 @strcmp(i8* %DOT24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @STR21, i32 0, i32 0)), !dbg !102
  %EQ25 = icmp eq i32 %strcmp, 0, !dbg !102
  br i1 %EQ25, label %if.then21, label %elif.start, !dbg !102

if.end20:                                         ; preds = %if.else, %elif.then48, %elif.then, %if.then21
  br label %while.start, !dbg !99

if.then21:                                        ; preds = %if.start19
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @STR22, i32 0, i32 0), i8** %msg, align 8, !dbg !102
  %self26 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !103
  %client_fd27 = getelementptr %struct.Server, %struct.Server* %self26, i32 0, i32 1, !dbg !103
  %DOT28 = load i32, i32* %client_fd27, align 4, !dbg !103
  %msg29 = load i8*, i8** %msg, align 8, !dbg !103
  %msg30 = load i8*, i8** %msg, align 8, !dbg !103
  %strlen31 = call i32 @strlen(i8* %msg30), !dbg !103
  %write32 = call i32 @write(i32 %DOT28, i8* %msg29, i32 %strlen31), !dbg !103
  br label %if.end20, !dbg !103

elif.start:                                       ; preds = %if.start19
  %self34 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !104
  %buf35 = getelementptr %struct.Server, %struct.Server* %self34, i32 0, i32 2, !dbg !104
  %DOT36 = load i8*, i8** %buf35, align 8, !dbg !104
  %strcmp37 = call i32 @strcmp(i8* %DOT36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @STR23, i32 0, i32 0)), !dbg !104
  %EQ38 = icmp eq i32 %strcmp37, 0, !dbg !104
  br i1 %EQ38, label %elif.then, label %elif.start33, !dbg !104

elif.then:                                        ; preds = %elif.start
  store i8* null, i8** %buff, align 8, !dbg !94
  %heap = call i8* @calloc(i64 100, i64 1), !dbg !94
  store i8* %heap, i8** %buff, align 8, !dbg !94
  %buff39 = load i8*, i8** %buff, align 8, !dbg !105
  %get_time = call i8* @get_time(), !dbg !105
  %strcpy = call i8* @strcpy(i8* %buff39, i8* %get_time), !dbg !105
  %self40 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !106
  %client_fd41 = getelementptr %struct.Server, %struct.Server* %self40, i32 0, i32 1, !dbg !106
  %DOT42 = load i32, i32* %client_fd41, align 4, !dbg !106
  %buff43 = load i8*, i8** %buff, align 8, !dbg !106
  %buff44 = load i8*, i8** %buff, align 8, !dbg !106
  %strlen45 = call i32 @strlen(i8* %buff44), !dbg !106
  %write46 = call i32 @write(i32 %DOT42, i8* %buff43, i32 %strlen45), !dbg !106
  %buff47 = load i8*, i8** %buff, align 8, !dbg !107
  call void @free(i8* %buff47), !dbg !107
  br label %if.end20, !dbg !107

elif.start33:                                     ; preds = %elif.start
  %self50 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !108
  %buf51 = getelementptr %struct.Server, %struct.Server* %self50, i32 0, i32 2, !dbg !108
  %DOT52 = load i8*, i8** %buf51, align 8, !dbg !108
  %strcmp53 = call i32 @strcmp(i8* %DOT52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR24, i32 0, i32 0)), !dbg !108
  %EQ54 = icmp eq i32 %strcmp53, 0, !dbg !108
  br i1 %EQ54, label %elif.then48, label %elif.start49, !dbg !108

elif.then48:                                      ; preds = %elif.start33
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @STR25, i32 0, i32 0), i8** %msg, align 8, !dbg !108
  %self55 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !109
  %client_fd56 = getelementptr %struct.Server, %struct.Server* %self55, i32 0, i32 1, !dbg !109
  %DOT57 = load i32, i32* %client_fd56, align 4, !dbg !109
  %msg58 = load i8*, i8** %msg, align 8, !dbg !109
  %msg59 = load i8*, i8** %msg, align 8, !dbg !109
  %strlen60 = call i32 @strlen(i8* %msg59), !dbg !109
  %write61 = call i32 @write(i32 %DOT57, i8* %msg58, i32 %strlen60), !dbg !109
  br label %if.end20, !dbg !109

elif.start49:                                     ; preds = %elif.start33
  %self63 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !110
  %buf64 = getelementptr %struct.Server, %struct.Server* %self63, i32 0, i32 2, !dbg !110
  %DOT65 = load i8*, i8** %buf64, align 8, !dbg !110
  %strcmp66 = call i32 @strcmp(i8* %DOT65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @STR26, i32 0, i32 0)), !dbg !110
  %EQ67 = icmp eq i32 %strcmp66, 0, !dbg !110
  br i1 %EQ67, label %elif.then62, label %if.else, !dbg !110

elif.then62:                                      ; preds = %elif.start49
  store i8* null, i8** %bye, align 8, !dbg !94
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @STR27, i32 0, i32 0), i8** %bye, align 8, !dbg !94
  %self68 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !111
  %client_fd69 = getelementptr %struct.Server, %struct.Server* %self68, i32 0, i32 1, !dbg !111
  %DOT70 = load i32, i32* %client_fd69, align 4, !dbg !111
  %bye71 = load i8*, i8** %bye, align 8, !dbg !111
  %bye72 = load i8*, i8** %bye, align 8, !dbg !111
  %strlen73 = call i32 @strlen(i8* %bye72), !dbg !111
  %write74 = call i32 @write(i32 %DOT70, i8* %bye71, i32 %strlen73), !dbg !111
  br label %while.end, !dbg !111

if.else:                                          ; preds = %elif.start49
  call void @log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @STR28, i32 0, i32 0)), !dbg !112
  %self75 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !113
  %buf76 = getelementptr %struct.Server, %struct.Server* %self75, i32 0, i32 2, !dbg !113
  %DOT77 = load i8*, i8** %buf76, align 8, !dbg !113
  call void @log_ts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR30, i32 0, i32 0), i8* %DOT77), !dbg !113
  call void @log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @STR31, i32 0, i32 0)), !dbg !99
  br label %if.end20, !dbg !99

while.start78:                                    ; preds = %if.end85, %if.end
  br i1 true, label %while.then79, label %while.end80, !dbg !96

while.then79:                                     ; preds = %while.start78
  %self81 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !114
  %rbuf = getelementptr %struct.Server, %struct.Server* %self81, i32 0, i32 3, !dbg !114
  %DOT82 = load i8*, i8** %rbuf, align 8, !dbg !114
  %read83 = call i32 @read(i32 0, i8* %DOT82, i32 1023), !dbg !114
  store i32 %read83, i32* %r, align 4, !dbg !114
  br label %if.start84, !dbg !114

while.end80:                                      ; preds = %if.then86, %while.start78
  %self103 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !115
  %client_fd104 = getelementptr %struct.Server, %struct.Server* %self103, i32 0, i32 1, !dbg !115
  %DOT105 = load i32, i32* %client_fd104, align 4, !dbg !115
  %close = call i32 @close(i32 %DOT105), !dbg !115
  ret void, !dbg !115

if.start84:                                       ; preds = %while.then79
  %r87 = load i32, i32* %r, align 4, !dbg !114
  %LE88 = icmp sle i32 %r87, 0, !dbg !114
  br i1 %LE88, label %if.then86, label %if.end85, !dbg !114

if.end85:                                         ; preds = %if.start84
  %self89 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !116
  %rbuf90 = getelementptr %struct.Server, %struct.Server* %self89, i32 0, i32 3, !dbg !116
  %r91 = load i32, i32* %r, align 4, !dbg !116
  %SUB = sub i32 %r91, 1, !dbg !116
  %DOT92 = load i8*, i8** %rbuf90, align 8, !dbg !116
  %ACCESS93 = getelementptr i8, i8* %DOT92, i32 %SUB, !dbg !116
  store i8 0, i8* %ACCESS93, align 1, !dbg !116
  %self94 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !117
  %client_fd95 = getelementptr %struct.Server, %struct.Server* %self94, i32 0, i32 1, !dbg !117
  %DOT96 = load i32, i32* %client_fd95, align 4, !dbg !117
  %self97 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !117
  %rbuf98 = getelementptr %struct.Server, %struct.Server* %self97, i32 0, i32 3, !dbg !117
  %DOT99 = load i8*, i8** %rbuf98, align 8, !dbg !117
  %r100 = load i32, i32* %r, align 4, !dbg !117
  %SUB101 = sub i32 %r100, 1, !dbg !117
  %write102 = call i32 @write(i32 %DOT96, i8* %DOT99, i32 %SUB101), !dbg !117
  call void @log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @STR33, i32 0, i32 0)), !dbg !118
  br label %while.start78, !dbg !118

if.then86:                                        ; preds = %if.start84
  br label %while.end80, !dbg !114
}

define void @Server_delete(%struct.Server* %self) !dbg !119 {
entry:
  %self1 = alloca %struct.Server*, align 8, !dbg !120
  store %struct.Server* %self, %struct.Server** %self1, align 8, !dbg !120
  %self2 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !121
  %buf = getelementptr %struct.Server, %struct.Server* %self2, i32 0, i32 2, !dbg !121
  %DOT = load i8*, i8** %buf, align 8, !dbg !121
  call void @free(i8* %DOT), !dbg !121
  %self3 = load %struct.Server*, %struct.Server** %self1, align 8, !dbg !122
  %rbuf = getelementptr %struct.Server, %struct.Server* %self3, i32 0, i32 3, !dbg !122
  %DOT4 = load i8*, i8** %rbuf, align 8, !dbg !122
  call void @free(i8* %DOT4), !dbg !122
  ret void, !dbg !122
}

define i32 @main() !dbg !123 {
entry:
  %addr = alloca %struct.SockAddr, align 8, !dbg !124
  %port = alloca i32, align 4, !dbg !124
  %srv = alloca %struct.Server, align 8, !dbg !124
  %pid = alloca i32, align 4, !dbg !124
  call void @banner(), !dbg !124
  store %struct.SockAddr zeroinitializer, %struct.SockAddr* %addr, align 8, !dbg !124
  store i32 0, i32* %port, align 4, !dbg !124
  store i32 17000, i32* %port, align 4, !dbg !124
  %ref_arg = load %struct.SockAddr*, %struct.SockAddr* %addr, align 8, !dbg !125
  %port1 = load i32, i32* %port, align 4, !dbg !125
  call void @SockAddr_set_port(%struct.SockAddr* %ref_arg, i32 %port1), !dbg !125
  %ref_arg2 = load %struct.SockAddr*, %struct.SockAddr* %addr, align 8, !dbg !126
  call void @SockAddr_set_ip(%struct.SockAddr* %ref_arg2, i32 0, i32 0, i32 0, i32 0), !dbg !126
  store %struct.Server zeroinitializer, %struct.Server* %srv, align 8, !dbg !124
  %ref_arg3 = load %struct.Server*, %struct.Server* %srv, align 8, !dbg !127
  call void @Server_set_reuse(%struct.Server* %ref_arg3), !dbg !127
  br label %if.start, !dbg !127

if.start:                                         ; preds = %entry
  %fd = getelementptr %struct.Server, %struct.Server* %srv, i32 0, i32 0, !dbg !128
  %DOT = load i32, i32* %fd, align 4, !dbg !128
  %data = getelementptr %struct.SockAddr, %struct.SockAddr* %addr, i32 0, i32 0, !dbg !128
  %DOT4 = load i8*, i8** %data, align 8, !dbg !128
  %bind = call i32 @bind(i32 %DOT, i8* %DOT4, i32 16), !dbg !128
  %LT = icmp slt i32 %bind, 0, !dbg !128
  br i1 %LT, label %if.then, label %if.end, !dbg !128

if.end:                                           ; preds = %if.start
  %fd5 = getelementptr %struct.Server, %struct.Server* %srv, i32 0, i32 0, !dbg !129
  %DOT6 = load i32, i32* %fd5, align 4, !dbg !129
  %listen = call i32 @listen(i32 %DOT6, i32 5), !dbg !129
  call void @log_ts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR38, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @STR39, i32 0, i32 0)), !dbg !130
  br label %while.start, !dbg !130

if.then:                                          ; preds = %if.start
  call void @log_ts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @STR36, i32 0, i32 0)), !dbg !131
  ret i32 1, !dbg !131

while.start:                                      ; preds = %if.end16, %if.then11, %if.end
  br i1 true, label %while.then, label %while.end, !dbg !130

while.then:                                       ; preds = %while.start
  %client_fd = getelementptr %struct.Server, %struct.Server* %srv, i32 0, i32 1, !dbg !130
  %fd7 = getelementptr %struct.Server, %struct.Server* %srv, i32 0, i32 0, !dbg !132
  %DOT8 = load i32, i32* %fd7, align 4, !dbg !132
  %accept = call i32 @accept(i32 %DOT8, i8* null, i8* null), !dbg !132
  store i32 %accept, i32* %client_fd, align 4, !dbg !132
  br label %if.start9, !dbg !132

while.end:                                        ; preds = %while.start
  %ref_arg25 = load %struct.SockAddr*, %struct.SockAddr* %addr, align 8, !dbg !133
  call void @SockAddr_delete(%struct.SockAddr* %ref_arg25), !dbg !133
  %ref_arg26 = load %struct.Server*, %struct.Server* %srv, align 8, !dbg !134
  call void @Server_delete(%struct.Server* %ref_arg26), !dbg !134
  call void @SockAddr.delete(%struct.SockAddr* %addr), !dbg !134
  call void @Server.delete(%struct.Server* %srv), !dbg !134
  ret i32 0, !dbg !134

if.start9:                                        ; preds = %while.then
  %client_fd12 = getelementptr %struct.Server, %struct.Server* %srv, i32 0, i32 1, !dbg !132
  %DOT13 = load i32, i32* %client_fd12, align 4, !dbg !132
  %LT14 = icmp slt i32 %DOT13, 0, !dbg !132
  br i1 %LT14, label %if.then11, label %if.end10, !dbg !132

if.end10:                                         ; preds = %if.start9
  call void @log_ts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @STR40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @STR41, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @STR42, i32 0, i32 0)), !dbg !135
  store i32 0, i32* %pid, align 4, !dbg !124
  %fork = call i32 @fork(), !dbg !136
  store i32 %fork, i32* %pid, align 4, !dbg !136
  br label %if.start15, !dbg !136

if.then11:                                        ; preds = %if.start9
  br label %while.start, !dbg !132

if.start15:                                       ; preds = %if.end10
  %pid18 = load i32, i32* %pid, align 4, !dbg !136
  %EQ = icmp eq i32 %pid18, 0, !dbg !136
  br i1 %EQ, label %if.then17, label %if.end16, !dbg !136

if.end16:                                         ; preds = %if.start15
  %client_fd22 = getelementptr %struct.Server, %struct.Server* %srv, i32 0, i32 1, !dbg !137
  %DOT23 = load i32, i32* %client_fd22, align 4, !dbg !137
  %close24 = call i32 @close(i32 %DOT23), !dbg !137
  br label %while.start, !dbg !137

if.then17:                                        ; preds = %if.start15
  %fd19 = getelementptr %struct.Server, %struct.Server* %srv, i32 0, i32 0, !dbg !138
  %DOT20 = load i32, i32* %fd19, align 4, !dbg !138
  %close = call i32 @close(i32 %DOT20), !dbg !138
  %ref_arg21 = load %struct.Server*, %struct.Server* %srv, align 8, !dbg !139
  call void @Server_handle_client(%struct.Server* %ref_arg21), !dbg !139
  ret i32 0, !dbg !139
}

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = distinct !DICompileUnit(language: DW_LANG_C, file: !3, producer: "ura", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DIFile(filename: "server.prep.ura", directory: "/ura-lang/src/tests/projects/ura-tcp-server/cmd/build")
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
!88 = distinct !DISubprogram(name: "Server_set_reuse", linkageName: "Server_set_reuse", scope: null, file: !3, line: 939, type: !5, scopeLine: 939, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!89 = !DILocation(line: 939, scope: !88)
!90 = !DILocation(line: 941, scope: !88)
!91 = !DILocation(line: 942, scope: !88)
!92 = !DILocation(line: 943, scope: !88)
!93 = distinct !DISubprogram(name: "Server_handle_client", linkageName: "Server_handle_client", scope: null, file: !3, line: 946, type: !5, scopeLine: 946, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!94 = !DILocation(line: 946, scope: !93)
!95 = !DILocation(line: 948, scope: !93)
!96 = !DILocation(line: 979, scope: !93)
!97 = !DILocation(line: 951, scope: !93)
!98 = !DILocation(line: 953, scope: !93)
!99 = !DILocation(line: 977, scope: !93)
!100 = !DILocation(line: 958, scope: !93)
!101 = !DILocation(line: 956, scope: !93)
!102 = !DILocation(line: 959, scope: !93)
!103 = !DILocation(line: 961, scope: !93)
!104 = !DILocation(line: 962, scope: !93)
!105 = !DILocation(line: 964, scope: !93)
!106 = !DILocation(line: 965, scope: !93)
!107 = !DILocation(line: 966, scope: !93)
!108 = !DILocation(line: 967, scope: !93)
!109 = !DILocation(line: 969, scope: !93)
!110 = !DILocation(line: 970, scope: !93)
!111 = !DILocation(line: 972, scope: !93)
!112 = !DILocation(line: 975, scope: !93)
!113 = !DILocation(line: 976, scope: !93)
!114 = !DILocation(line: 981, scope: !93)
!115 = !DILocation(line: 987, scope: !93)
!116 = !DILocation(line: 984, scope: !93)
!117 = !DILocation(line: 985, scope: !93)
!118 = !DILocation(line: 986, scope: !93)
!119 = distinct !DISubprogram(name: "Server_delete", linkageName: "Server_delete", scope: null, file: !3, line: 990, type: !5, scopeLine: 990, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!120 = !DILocation(line: 990, scope: !119)
!121 = !DILocation(line: 991, scope: !119)
!122 = !DILocation(line: 992, scope: !119)
!123 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !3, line: 995, type: !5, scopeLine: 995, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !6)
!124 = !DILocation(line: 996, scope: !123)
!125 = !DILocation(line: 999, scope: !123)
!126 = !DILocation(line: 1000, scope: !123)
!127 = !DILocation(line: 1002, scope: !123)
!128 = !DILocation(line: 1003, scope: !123)
!129 = !DILocation(line: 1006, scope: !123)
!130 = !DILocation(line: 1007, scope: !123)
!131 = !DILocation(line: 1004, scope: !123)
!132 = !DILocation(line: 1009, scope: !123)
!133 = !DILocation(line: 1019, scope: !123)
!134 = !DILocation(line: 1020, scope: !123)
!135 = !DILocation(line: 1012, scope: !123)
!136 = !DILocation(line: 1013, scope: !123)
!137 = !DILocation(line: 1018, scope: !123)
!138 = !DILocation(line: 1015, scope: !123)
!139 = !DILocation(line: 1016, scope: !123)
