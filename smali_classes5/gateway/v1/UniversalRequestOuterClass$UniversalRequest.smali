.class public final Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniversalRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;,
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;,
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;,
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;,
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;",
        ">;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x2

.field public static final SHARED_DATA_FIELD_NUMBER:I = 0x1


# instance fields
.field private payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

.field private sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3640
    new-instance v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-direct {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;-><init>()V

    .line 3643
    sput-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 3644
    const-class v1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5600()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1

    .line 60
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object v0
.end method

.method static synthetic access$5700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->setSharedData(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V

    return-void
.end method

.method static synthetic access$5800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->mergeSharedData(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V

    return-void
.end method

.method static synthetic access$5900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->clearSharedData()V

    return-void
.end method

.method static synthetic access$6000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->setPayload(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V

    return-void
.end method

.method static synthetic access$6100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->mergePayload(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V

    return-void
.end method

.method static synthetic access$6200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->clearPayload()V

    return-void
.end method

.method private clearPayload()V
    .locals 1

    const/4 v0, 0x0

    .line 3339
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-void
.end method

.method private clearSharedData()V
    .locals 1

    const/4 v0, 0x0

    .line 3273
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1

    .line 3649
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object v0
.end method

.method private mergePayload(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 2

    .line 3322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3323
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    if-eqz v0, :cond_0

    .line 3324
    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3325
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    .line 3326
    invoke-static {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newBuilder(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    invoke-virtual {p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-void

    .line 3328
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-void
.end method

.method private mergeSharedData(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .locals 2

    .line 3256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3257
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    if-eqz v0, :cond_0

    .line 3258
    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3259
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    .line 3260
    invoke-static {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->newBuilder(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;

    invoke-virtual {p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-void

    .line 3262
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-void
.end method

.method public static newBuilder()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;
    .locals 1

    .line 3418
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;
    .locals 1

    .line 3421
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-virtual {v0, p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3395
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3401
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3359
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3366
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3406
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3413
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3383
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3390
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3346
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3353
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3371
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3378
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
            ">;"
        }
    .end annotation

    .line 3655
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPayload(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 3309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3310
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-void
.end method

.method private setSharedData(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .locals 0

    .line 3243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3244
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3591
    sget-object p2, Lgateway/v1/UniversalRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3633
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3627
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3612
    :pswitch_2
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3614
    const-class p2, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    monitor-enter p2

    .line 3615
    :try_start_0
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3617
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3620
    sput-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 3622
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 3609
    :pswitch_3
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    .line 3599
    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "sharedData_"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "payload_"

    aput-object p3, p1, p2

    .line 3603
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    .line 3605
    sget-object p3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {p3, p2, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3596
    :pswitch_5
    new-instance p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;

    invoke-direct {p1, p3}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;-><init>(Lgateway/v1/UniversalRequestOuterClass$1;)V

    return-object p1

    .line 3593
    :pswitch_6
    new-instance p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-direct {p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPayload()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1

    .line 3299
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    if-nez v0, :cond_0

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSharedData()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .locals 1

    .line 3233
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    if-nez v0, :cond_0

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasPayload()Z
    .locals 1

    .line 3288
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSharedData()Z
    .locals 1

    .line 3222
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
