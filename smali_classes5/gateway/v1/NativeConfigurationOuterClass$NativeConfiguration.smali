.class public final Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgateway/v1/NativeConfigurationOuterClass$NativeConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;",
        ">;",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfigurationOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_OPERATIONS_FIELD_NUMBER:I = 0x6

.field public static final AD_POLICY_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

.field public static final DIAGNOSTIC_EVENTS_FIELD_NUMBER:I = 0x1

.field public static final FEATURE_FLAGS_FIELD_NUMBER:I = 0x7

.field public static final INIT_POLICY_FIELD_NUMBER:I = 0x2

.field public static final OPERATIVE_EVENT_POLICY_FIELD_NUMBER:I = 0x4

.field public static final OTHER_POLICY_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

.field private adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

.field private featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

.field private initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4881
    new-instance v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-direct {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;-><init>()V

    .line 4884
    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 4885
    const-class v1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3758
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$6500()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1

    .line 3753
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object v0
.end method

.method static synthetic access$6600(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setDiagnosticEvents(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    return-void
.end method

.method static synthetic access$6700(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeDiagnosticEvents(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    return-void
.end method

.method static synthetic access$6800(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearDiagnosticEvents()V

    return-void
.end method

.method static synthetic access$6900(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setInitPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7000(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeInitPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7100(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearInitPolicy()V

    return-void
.end method

.method static synthetic access$7200(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setAdPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7300(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeAdPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7400(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearAdPolicy()V

    return-void
.end method

.method static synthetic access$7500(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setOperativeEventPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7600(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeOperativeEventPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7700(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearOperativeEventPolicy()V

    return-void
.end method

.method static synthetic access$7800(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setOtherPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7900(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeOtherPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$8000(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearOtherPolicy()V

    return-void
.end method

.method static synthetic access$8100(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setAdOperations(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V

    return-void
.end method

.method static synthetic access$8200(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeAdOperations(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V

    return-void
.end method

.method static synthetic access$8300(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearAdOperations()V

    return-void
.end method

.method static synthetic access$8400(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setFeatureFlags(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V

    return-void
.end method

.method static synthetic access$8500(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 3753
    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeFeatureFlags(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V

    return-void
.end method

.method static synthetic access$8600(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .locals 0

    .line 3753
    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearFeatureFlags()V

    return-void
.end method

.method private clearAdOperations()V
    .locals 1

    const/4 v0, 0x0

    .line 4152
    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-void
.end method

.method private clearAdPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 3954
    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private clearDiagnosticEvents()V
    .locals 1

    const/4 v0, 0x0

    .line 3822
    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-void
.end method

.method private clearFeatureFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 4218
    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-void
.end method

.method private clearInitPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 3888
    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private clearOperativeEventPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 4020
    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private clearOtherPolicy()V
    .locals 1

    const/4 v0, 0x0

    .line 4086
    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1

    .line 4890
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object v0
.end method

.method private mergeAdOperations(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .locals 2

    .line 4135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4136
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    if-eqz v0, :cond_0

    .line 4137
    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4138
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    .line 4139
    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;

    invoke-virtual {p1}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-void

    .line 4141
    :cond_0
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-void
.end method

.method private mergeAdPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 2

    .line 3937
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3938
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    .line 3939
    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3940
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 3941
    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    invoke-virtual {p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void

    .line 3943
    :cond_0
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private mergeDiagnosticEvents(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .locals 2

    .line 3805
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3806
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    if-eqz v0, :cond_0

    .line 3807
    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3808
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    .line 3809
    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;

    invoke-virtual {p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-void

    .line 3811
    :cond_0
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-void
.end method

.method private mergeFeatureFlags(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 2

    .line 4201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4202
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    if-eqz v0, :cond_0

    .line 4203
    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4204
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    .line 4205
    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;

    invoke-virtual {p1}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-void

    .line 4207
    :cond_0
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-void
.end method

.method private mergeInitPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 2

    .line 3871
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3872
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    .line 3873
    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3874
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 3875
    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    invoke-virtual {p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void

    .line 3877
    :cond_0
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private mergeOperativeEventPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 2

    .line 4003
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4004
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    .line 4005
    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4006
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 4007
    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    invoke-virtual {p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void

    .line 4009
    :cond_0
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private mergeOtherPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 2

    .line 4069
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4070
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    .line 4071
    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4072
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 4073
    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;

    invoke-virtual {p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void

    .line 4075
    :cond_0
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method public static newBuilder()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;
    .locals 1

    .line 4297
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;
    .locals 1

    .line 4300
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0, p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4274
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4280
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4238
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4245
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4285
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4292
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4262
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4269
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4225
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4232
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4250
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4257
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
            ">;"
        }
    .end annotation

    .line 4896
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdOperations(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .locals 0

    .line 4122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4123
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-void
.end method

.method private setAdPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3924
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3925
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private setDiagnosticEvents(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .locals 0

    .line 3792
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3793
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-void
.end method

.method private setFeatureFlags(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 0

    .line 4188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4189
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-void
.end method

.method private setInitPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3858
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3859
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private setOperativeEventPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 3990
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3991
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private setOtherPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 0

    .line 4056
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4057
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4826
    sget-object p2, Lgateway/v1/NativeConfigurationOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4874
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4868
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4853
    :pswitch_2
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4855
    const-class p2, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    monitor-enter p2

    .line 4856
    :try_start_0
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4858
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4861
    sput-object p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 4863
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

    .line 4850
    :pswitch_3
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    .line 4834
    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "diagnosticEvents_"

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "initPolicy_"

    aput-object p3, p1, p2

    const-string p2, "adPolicy_"

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string p2, "operativeEventPolicy_"

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "otherPolicy_"

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const-string p2, "adOperations_"

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const-string p2, "featureFlags_"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    .line 4843
    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\t\u0002\t\u0003\t\u0004\t\u0005\t\u0006\t\u0007\t"

    .line 4846
    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {p3, p2, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4831
    :pswitch_5
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-direct {p1, p3}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;-><init>(Lgateway/v1/NativeConfigurationOuterClass$1;)V

    return-object p1

    .line 4828
    :pswitch_6
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-direct {p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;-><init>()V

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

.method public getAdOperations()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .locals 1

    .line 4112
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAdPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 1

    .line 3914
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDiagnosticEvents()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .locals 1

    .line 3782
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFeatureFlags()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 1

    .line 4178
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    if-nez v0, :cond_0

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInitPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 1

    .line 3848
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOperativeEventPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 1

    .line 3980
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOtherPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 1

    .line 4046
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAdOperations()Z
    .locals 1

    .line 4101
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasAdPolicy()Z
    .locals 1

    .line 3903
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDiagnosticEvents()Z
    .locals 1

    .line 3771
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasFeatureFlags()Z
    .locals 1

    .line 4167
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasInitPolicy()Z
    .locals 1

    .line 3837
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOperativeEventPolicy()Z
    .locals 1

    .line 3969
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasOtherPolicy()Z
    .locals 1

    .line 4035
    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
