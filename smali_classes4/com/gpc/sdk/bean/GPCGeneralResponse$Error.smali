.class public Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/bean/GPCGeneralResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->code:I

    return p0
.end method

.method public static synthetic access$002(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->code:I

    return p1
.end method

.method public static synthetic access$102(Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->message:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->code:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCGeneralResponse$Error;->message:Ljava/lang/String;

    return-void
.end method
