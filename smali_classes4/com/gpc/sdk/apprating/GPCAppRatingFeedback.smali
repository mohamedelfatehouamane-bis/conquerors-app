.class public final Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;->a:I

    iput-object p2, p0, Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;->a:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCAppRatingFeedback;->b:Ljava/lang/String;

    return-object v0
.end method
