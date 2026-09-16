.class public final Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationRequestOuterClass.java"

# interfaces
.implements Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationDeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;",
        ">;",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUNDLE_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

.field public static final DEVICE_MAKE_FIELD_NUMBER:I = 0x2

.field public static final DEVICE_MODEL_FIELD_NUMBER:I = 0x3

.field public static final OS_VERSION_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bundleId_:Ljava/lang/String;

.field private deviceMake_:Ljava/lang/String;

.field private deviceModel_:Ljava/lang/String;

.field private osVersion_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 625
    new-instance v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-direct {v0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;-><init>()V

    .line 628
    sput-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    .line 629
    const-class v1, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->bundleId_:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceMake_:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceModel_:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->osVersion_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1

    .line 71
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object v0
.end method

.method static synthetic access$100(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->setBundleId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->setOsVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->clearOsVersion()V

    return-void
.end method

.method static synthetic access$1200(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->setOsVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->clearBundleId()V

    return-void
.end method

.method static synthetic access$300(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->setBundleIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->setDeviceMake(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->clearDeviceMake()V

    return-void
.end method

.method static synthetic access$600(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->setDeviceMakeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->setDeviceModel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->clearDeviceModel()V

    return-void
.end method

.method static synthetic access$900(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->setDeviceModelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearBundleId()V
    .locals 1

    .line 116
    invoke-static {}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->getDefaultInstance()Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->getBundleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->bundleId_:Ljava/lang/String;

    return-void
.end method

.method private clearDeviceMake()V
    .locals 1

    .line 163
    invoke-static {}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->getDefaultInstance()Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->getDeviceMake()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceMake_:Ljava/lang/String;

    return-void
.end method

.method private clearDeviceModel()V
    .locals 1

    .line 210
    invoke-static {}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->getDefaultInstance()Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceModel_:Ljava/lang/String;

    return-void
.end method

.method private clearOsVersion()V
    .locals 1

    .line 257
    invoke-static {}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->getDefaultInstance()Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->osVersion_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1

    .line 634
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;
    .locals 1

    .line 345
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-virtual {v0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;
    .locals 1

    .line 348
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-virtual {v0, p0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 286
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 293
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 273
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 280
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 298
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 305
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 640
    sget-object v0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-virtual {v0}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBundleId(Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    iput-object p1, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->bundleId_:Ljava/lang/String;

    return-void
.end method

.method private setBundleIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 124
    invoke-static {p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 125
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->bundleId_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceMake(Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    iput-object p1, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceMake_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceMakeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 171
    invoke-static {p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 172
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceMake_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    iput-object p1, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceModel_:Ljava/lang/String;

    return-void
.end method

.method private setDeviceModelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 218
    invoke-static {p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 219
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceModel_:Ljava/lang/String;

    return-void
.end method

.method private setOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    iput-object p1, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->osVersion_:Ljava/lang/String;

    return-void
.end method

.method private setOsVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 265
    invoke-static {p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 266
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->osVersion_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 573
    sget-object p2, Lgateway/v1/InitializationRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 618
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 612
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 597
    :pswitch_2
    sget-object p1, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 599
    const-class p2, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    monitor-enter p2

    .line 600
    :try_start_0
    sget-object p1, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 602
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 605
    sput-object p1, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 607
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

    .line 594
    :pswitch_3
    sget-object p1, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 581
    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "bundleId_"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "deviceMake_"

    aput-object p3, p1, p2

    const-string p2, "deviceModel_"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "osVersion_"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 587
    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208"

    .line 590
    sget-object p3, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->DEFAULT_INSTANCE:Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {p3, p2, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 578
    :pswitch_5
    new-instance p1, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;

    invoke-direct {p1, p3}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;-><init>(Lgateway/v1/InitializationRequestOuterClass$1;)V

    return-object p1

    .line 575
    :pswitch_6
    new-instance p1, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-direct {p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;-><init>()V

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

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->bundleId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 99
    iget-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->bundleId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceMake()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceMake_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMakeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 146
    iget-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceMake_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 193
    iget-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->deviceModel_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->osVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 240
    iget-object v0, p0, Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->osVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
