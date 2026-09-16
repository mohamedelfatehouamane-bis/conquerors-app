.class public Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final lat:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;->id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;->lat:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;->id:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;->lat:Ljava/lang/Boolean;

    return-object v0
.end method
