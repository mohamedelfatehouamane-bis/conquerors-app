.class public Lcom/gpc/operations/migrate/familyurl/FamilyApisUrlMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/matcher/IURLsMatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "FamilyApisUrlMatcher"


# instance fields
.field urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/gpc/operations/migrate/familyurl/FamilyApisUrlMatcher;->urls:Ljava/util/List;

    return-void

    .line 7
    :cond_1
    :goto_0
    const-string p1, "FamilyApisUrlMatcher"

    const-string v0, "API Prefixes == null !!!"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public URLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyApisUrlMatcher;->urls:Ljava/util/List;

    return-object v0
.end method
