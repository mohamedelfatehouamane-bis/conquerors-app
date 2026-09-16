.class public Lcom/gpc/sdk/service/GPCAppConfigService$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/GPCAppConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/service/GPCAppConfigService$f;

.field public b:Ljava/lang/String;

.field public c:Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;

.field public d:I

.field public final synthetic e:Lcom/gpc/sdk/service/GPCAppConfigService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/GPCAppConfigService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$g;->e:Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$g;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/service/GPCAppConfigService;Lcom/gpc/sdk/service/GPCAppConfigService$a;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/gpc/sdk/service/GPCAppConfigService$g;-><init>(Lcom/gpc/sdk/service/GPCAppConfigService;)V

    return-void
.end method
