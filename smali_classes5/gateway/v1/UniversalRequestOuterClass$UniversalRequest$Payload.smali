.class public final Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;,
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;",
        ">;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_DATA_REFRESH_REQUEST_FIELD_NUMBER:I = 0x9

.field public static final AD_PLAYER_CONFIG_REQUEST_FIELD_NUMBER:I = 0x6

.field public static final AD_REQUEST_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

.field public static final DIAGNOSTIC_EVENT_REQUEST_FIELD_NUMBER:I = 0x5

.field public static final GET_TOKEN_EVENT_REQUEST_FIELD_NUMBER:I = 0x7

.field public static final INITIALIZATION_COMPLETED_EVENT_REQUEST_FIELD_NUMBER:I = 0xa

.field public static final INITIALIZATION_REQUEST_FIELD_NUMBER:I = 0x2

.field public static final OPERATIVE_EVENT_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVACY_UPDATE_REQUEST_FIELD_NUMBER:I = 0x8


# instance fields
.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3192
    new-instance v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-direct {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;-><init>()V

    .line 3195
    sput-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    .line 3196
    const-class v1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1682
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1684
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method static synthetic access$2600()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1

    .line 1677
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object v0
.end method

.method static synthetic access$2700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearValue()V

    return-void
.end method

.method static synthetic access$2800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setInitializationRequest(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-void
.end method

.method static synthetic access$2900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeInitializationRequest(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-void
.end method

.method static synthetic access$3000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearInitializationRequest()V

    return-void
.end method

.method static synthetic access$3100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdRequest(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-void
.end method

.method static synthetic access$3200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdRequest(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-void
.end method

.method static synthetic access$3300(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdRequest()V

    return-void
.end method

.method static synthetic access$3400(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setOperativeEvent(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V

    return-void
.end method

.method static synthetic access$3500(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeOperativeEvent(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V

    return-void
.end method

.method static synthetic access$3600(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearOperativeEvent()V

    return-void
.end method

.method static synthetic access$3700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setDiagnosticEventRequest(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V

    return-void
.end method

.method static synthetic access$3800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeDiagnosticEventRequest(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V

    return-void
.end method

.method static synthetic access$3900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearDiagnosticEventRequest()V

    return-void
.end method

.method static synthetic access$4000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdPlayerConfigRequest(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V

    return-void
.end method

.method static synthetic access$4100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdPlayerConfigRequest(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V

    return-void
.end method

.method static synthetic access$4200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdPlayerConfigRequest()V

    return-void
.end method

.method static synthetic access$4300(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setGetTokenEventRequest(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V

    return-void
.end method

.method static synthetic access$4400(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeGetTokenEventRequest(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V

    return-void
.end method

.method static synthetic access$4500(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearGetTokenEventRequest()V

    return-void
.end method

.method static synthetic access$4600(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setPrivacyUpdateRequest(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V

    return-void
.end method

.method static synthetic access$4700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergePrivacyUpdateRequest(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V

    return-void
.end method

.method static synthetic access$4800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearPrivacyUpdateRequest()V

    return-void
.end method

.method static synthetic access$4900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdDataRefreshRequest(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V

    return-void
.end method

.method static synthetic access$5000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdDataRefreshRequest(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V

    return-void
.end method

.method static synthetic access$5100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdDataRefreshRequest()V

    return-void
.end method

.method static synthetic access$5200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setInitializationCompletedEventRequest(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V

    return-void
.end method

.method static synthetic access$5300(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeInitializationCompletedEventRequest(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V

    return-void
.end method

.method static synthetic access$5400(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearInitializationCompletedEventRequest()V

    return-void
.end method

.method private clearAdDataRefreshRequest()V
    .locals 2

    .line 2295
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2296
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 2297
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAdPlayerConfigRequest()V
    .locals 2

    .line 2085
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2086
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 2087
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAdRequest()V
    .locals 2

    .line 1875
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1876
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 1877
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDiagnosticEventRequest()V
    .locals 2

    .line 2015
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2016
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 2017
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGetTokenEventRequest()V
    .locals 2

    .line 2155
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2156
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 2157
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearInitializationCompletedEventRequest()V
    .locals 2

    .line 2365
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2366
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 2367
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearInitializationRequest()V
    .locals 2

    .line 1805
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1806
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 1807
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOperativeEvent()V
    .locals 2

    .line 1945
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1946
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 1947
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPrivacyUpdateRequest()V
    .locals 2

    .line 2225
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2226
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 2227
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 1737
    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    .line 1738
    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1

    .line 3201
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object v0
.end method

.method private mergeAdDataRefreshRequest(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .locals 3

    .line 2277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2278
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2279
    invoke-static {}, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;->getDefaultInstance()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2280
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    invoke-static {v0}, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;->newBuilder(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest$Builder;

    move-result-object v0

    .line 2281
    invoke-virtual {v0, p1}, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest$Builder;

    invoke-virtual {p1}, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 2283
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2285
    :goto_0
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdPlayerConfigRequest(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .locals 3

    .line 2067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2068
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2069
    invoke-static {}, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;->getDefaultInstance()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2070
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    invoke-static {v0}, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;->newBuilder(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$Builder;

    move-result-object v0

    .line 2071
    invoke-virtual {v0, p1}, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$Builder;

    invoke-virtual {p1}, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 2073
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2075
    :goto_0
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdRequest(Lgateway/v1/AdRequestOuterClass$AdRequest;)V
    .locals 3

    .line 1857
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1858
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 1859
    invoke-static {}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgateway/v1/AdRequestOuterClass$AdRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1860
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->newBuilder(Lgateway/v1/AdRequestOuterClass$AdRequest;)Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;

    move-result-object v0

    .line 1861
    invoke-virtual {v0, p1}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;

    invoke-virtual {p1}, Lgateway/v1/AdRequestOuterClass$AdRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 1863
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 1865
    :goto_0
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeDiagnosticEventRequest(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .locals 3

    .line 1997
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1998
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 1999
    invoke-static {}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;->getDefaultInstance()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2000
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    invoke-static {v0}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;->newBuilder(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;

    move-result-object v0

    .line 2001
    invoke-virtual {v0, p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;

    invoke-virtual {p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 2003
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2005
    :goto_0
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeGetTokenEventRequest(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .locals 3

    .line 2137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2138
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2139
    invoke-static {}, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;->getDefaultInstance()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2140
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    invoke-static {v0}, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;->newBuilder(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;

    move-result-object v0

    .line 2141
    invoke-virtual {v0, p1}, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;

    invoke-virtual {p1}, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 2143
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2145
    :goto_0
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeInitializationCompletedEventRequest(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .locals 3

    .line 2347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2348
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2349
    invoke-static {}, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;->getDefaultInstance()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2350
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    invoke-static {v0}, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;->newBuilder(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$Builder;

    move-result-object v0

    .line 2351
    invoke-virtual {v0, p1}, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$Builder;

    invoke-virtual {p1}, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 2353
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2355
    :goto_0
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeInitializationRequest(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 3

    .line 1787
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1788
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 1789
    invoke-static {}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;->getDefaultInstance()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1790
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;->newBuilder(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    move-result-object v0

    .line 1791
    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 1793
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 1795
    :goto_0
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeOperativeEvent(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .locals 3

    .line 1927
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1928
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 1929
    invoke-static {}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;->getDefaultInstance()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1930
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    invoke-static {v0}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;->newBuilder(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    move-result-object v0

    .line 1931
    invoke-virtual {v0, p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;

    invoke-virtual {p1}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 1933
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 1935
    :goto_0
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergePrivacyUpdateRequest(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .locals 3

    .line 2207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2208
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2209
    invoke-static {}, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;->getDefaultInstance()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2210
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    invoke-static {v0}, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;->newBuilder(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest$Builder;

    move-result-object v0

    .line 2211
    invoke-virtual {v0, p1}, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest$Builder;

    invoke-virtual {p1}, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 2213
    :cond_0
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    .line 2215
    :goto_0
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method public static newBuilder()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;
    .locals 1

    .line 2446
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;
    .locals 1

    .line 2449
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0, p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2423
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2429
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2387
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2394
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2434
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2441
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2411
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2418
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2374
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2381
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2399
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2406
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
            ">;"
        }
    .end annotation

    .line 3207
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdDataRefreshRequest(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .locals 0

    .line 2265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2266
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 2267
    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setAdPlayerConfigRequest(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .locals 0

    .line 2055
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2056
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 2057
    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setAdRequest(Lgateway/v1/AdRequestOuterClass$AdRequest;)V
    .locals 0

    .line 1845
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1846
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 1847
    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setDiagnosticEventRequest(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .locals 0

    .line 1985
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1986
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 1987
    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setGetTokenEventRequest(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .locals 0

    .line 2125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2126
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 2127
    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setInitializationCompletedEventRequest(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .locals 0

    .line 2335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2336
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 2337
    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setInitializationRequest(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 0

    .line 1775
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1776
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1777
    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setOperativeEvent(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .locals 0

    .line 1915
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1916
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 1917
    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setPrivacyUpdateRequest(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .locals 0

    .line 2195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2196
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 2197
    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3133
    sget-object p2, Lgateway/v1/UniversalRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3185
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3179
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3164
    :pswitch_2
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3166
    const-class p2, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    monitor-enter p2

    .line 3167
    :try_start_0
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3169
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3172
    sput-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->PARSER:Lcom/google/protobuf/Parser;

    .line 3174
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

    .line 3161
    :pswitch_3
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    .line 3141
    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "value_"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "valueCase_"

    aput-object p3, p1, p2

    const-class p2, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-class p2, Lgateway/v1/AdRequestOuterClass$AdRequest;

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-class p2, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const-class p2, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const-class p2, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-class p2, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-class p2, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-class p2, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-class p2, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    const/16 p3, 0xa

    aput-object p2, p1, p3

    .line 3154
    const-string p2, "\u0000\t\u0001\u0000\u0002\n\t\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000\n<\u0000"

    .line 3157
    sget-object p3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {p3, p2, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3138
    :pswitch_5
    new-instance p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;

    invoke-direct {p1, p3}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;-><init>(Lgateway/v1/UniversalRequestOuterClass$1;)V

    return-object p1

    .line 3135
    :pswitch_6
    new-instance p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-direct {p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;-><init>()V

    return-object p1

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

.method public getAdDataRefreshRequest()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;
    .locals 2

    .line 2252
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2253
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    return-object v0

    .line 2255
    :cond_0
    invoke-static {}, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;->getDefaultInstance()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerConfigRequest()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;
    .locals 2

    .line 2042
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2043
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    return-object v0

    .line 2045
    :cond_0
    invoke-static {}, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;->getDefaultInstance()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAdRequest()Lgateway/v1/AdRequestOuterClass$AdRequest;
    .locals 2

    .line 1832
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1833
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    return-object v0

    .line 1835
    :cond_0
    invoke-static {}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgateway/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticEventRequest()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;
    .locals 2

    .line 1972
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1973
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    return-object v0

    .line 1975
    :cond_0
    invoke-static {}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;->getDefaultInstance()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGetTokenEventRequest()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;
    .locals 2

    .line 2112
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2113
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    return-object v0

    .line 2115
    :cond_0
    invoke-static {}, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;->getDefaultInstance()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationCompletedEventRequest()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;
    .locals 2

    .line 2322
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2323
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    return-object v0

    .line 2325
    :cond_0
    invoke-static {}, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;->getDefaultInstance()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationRequest()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;
    .locals 2

    .line 1762
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1763
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    return-object v0

    .line 1765
    :cond_0
    invoke-static {}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;->getDefaultInstance()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getOperativeEvent()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;
    .locals 2

    .line 1902
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1903
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    return-object v0

    .line 1905
    :cond_0
    invoke-static {}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;->getDefaultInstance()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyUpdateRequest()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;
    .locals 2

    .line 2182
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2183
    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    return-object v0

    .line 2185
    :cond_0
    invoke-static {}, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;->getDefaultInstance()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .locals 1

    .line 1732
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    invoke-static {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->forNumber(I)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAdDataRefreshRequest()Z
    .locals 2

    .line 2241
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdPlayerConfigRequest()Z
    .locals 2

    .line 2031
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdRequest()Z
    .locals 2

    .line 1821
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDiagnosticEventRequest()Z
    .locals 2

    .line 1961
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasGetTokenEventRequest()Z
    .locals 2

    .line 2101
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasInitializationCompletedEventRequest()Z
    .locals 2

    .line 2311
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasInitializationRequest()Z
    .locals 2

    .line 1751
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOperativeEvent()Z
    .locals 2

    .line 1891
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrivacyUpdateRequest()Z
    .locals 2

    .line 2171
    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
