.class public Lcom/gpc/sdk/GPCURLBundle$a;
.super Lcom/gpc/sdk/GPCURLBundle$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/GPCURLBundle;->forumURL(Lcom/gpc/sdk/GPCURLBundle$GPCURLBundleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/gpc/sdk/GPCURLBundle;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCURLBundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCURLBundle$a;->b:Lcom/gpc/sdk/GPCURLBundle;

    invoke-direct {p0, p1}, Lcom/gpc/sdk/GPCURLBundle$f;-><init>(Lcom/gpc/sdk/GPCURLBundle;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCURLBundle$a;->b:Lcom/gpc/sdk/GPCURLBundle;

    invoke-static {v0, p1}, Lcom/gpc/sdk/GPCURLBundle;->access$000(Lcom/gpc/sdk/GPCURLBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
