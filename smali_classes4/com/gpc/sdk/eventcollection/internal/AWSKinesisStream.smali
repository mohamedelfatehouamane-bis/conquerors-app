.class public abstract Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/IStreamService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$Companion;

.field public static final TAG:Ljava/lang/String; = "AWSKinesisStream"


# instance fields
.field private kinesisRecorder:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;

.field private streamName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$gQvtndGMFyAlWo7zt4HXe4vOB7w(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;)V
    .locals 0

    invoke-static {p0}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->purgeBuffer$lambda$1(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l6KwLGlZoHqitSzA71dEyvJc0ZA(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->write$lambda$2(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJ_8MwdIadxfeLXG0Ky68mFvIXs(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;)V
    .locals 0

    invoke-static {p0}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->flush$lambda$0(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->Companion:Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->getStreamName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->streamName:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/gpc/aws/internal/StaticCredentialsProvider;

    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$provider$1;

    invoke-direct {v1, p1}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$provider$1;-><init>(Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;)V

    invoke-direct {v0, v1}, Lcom/gpc/aws/internal/StaticCredentialsProvider;-><init>(Lcom/gpc/aws/auth/AWSCredentials;)V

    .line 15
    new-instance v1, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;

    invoke-direct {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;-><init>()V

    .line 16
    new-instance v2, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$1;

    invoke-direct {v2}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->withDeadLetterListener(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/DeadLetterListener;)Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;

    .line 22
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->getCacheDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v3, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;

    .line 25
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->getRegion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/aws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/gpc/aws/regions/Regions;

    move-result-object p1

    .line 26
    invoke-direct {v3, v2, p1, v0, v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;-><init>(Ljava/io/File;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V

    iput-object v3, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->kinesisRecorder:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 34
    const-string v0, "AWSKinesisStream"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final flush$lambda$0(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;)V
    .locals 3

    const-string v0, ""

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v1, "flush in Work Thread"

    const-string v2, "AWSKinesisStream"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->kinesisRecorder:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->submitAllRecords()V
    :try_end_0
    .catch Lcom/gpc/aws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    invoke-static {v2, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 9
    invoke-static {v2, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static final purgeBuffer$lambda$1(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;)V
    .locals 3

    const-string v0, ""

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v1, "purgeBuffer in Work Thread"

    const-string v2, "AWSKinesisStream"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->kinesisRecorder:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->deleteAllRecords()V
    :try_end_0
    .catch Lcom/gpc/aws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    invoke-static {v2, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 9
    invoke-static {v2, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static final write$lambda$2(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V
    .locals 3

    const-string v0, ""

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$packet"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v1, "write in Work Thread"

    const-string v2, "AWSKinesisStream"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->kinesisRecorder:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->stringify()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->streamName:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p1, p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->saveRecord(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/gpc/aws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 12
    invoke-static {v2, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 13
    invoke-static {v2, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "flush streamName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;->streamName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AWSKinesisStream"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/eventcollection/internal/EventCollectionExcutor;->instance()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda1;-><init>(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract getCacheDir()Ljava/lang/String;
.end method

.method public purgeBuffer()V
    .locals 2

    .line 1
    const-string v0, "AWSKinesisStream"

    const-string v1, "purgeBuffer"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/eventcollection/internal/EventCollectionExcutor;->instance()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public write(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V
    .locals 2

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "AWSKinesisStream"

    const-string v1, "write"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/eventcollection/internal/EventCollectionExcutor;->instance()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream$$ExternalSyntheticLambda2;-><init>(Lcom/gpc/sdk/eventcollection/internal/AWSKinesisStream;Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
