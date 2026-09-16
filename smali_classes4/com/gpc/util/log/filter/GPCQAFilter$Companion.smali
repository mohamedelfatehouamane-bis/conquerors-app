.class public final Lcom/gpc/util/log/filter/GPCQAFilter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/util/log/filter/GPCQAFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/util/log/filter/GPCQAFilter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPACKAGES_TAGS()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/util/log/filter/GPCQAFilter;->access$getPACKAGES_TAGS$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getTAGS()Ljava/util/List;
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
    invoke-static {}, Lcom/gpc/util/log/filter/GPCQAFilter;->access$getTAGS$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
