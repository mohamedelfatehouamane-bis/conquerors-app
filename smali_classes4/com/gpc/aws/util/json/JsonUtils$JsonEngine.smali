.class public final enum Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;
.super Ljava/lang/Enum;
.source "JsonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/util/json/JsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsonEngine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

.field public static final enum Gson:Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

.field public static final enum Jackson:Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

    const-string v1, "Gson"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;->Gson:Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

    .line 57
    new-instance v1, Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

    const-string v3, "Jackson"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;->Jackson:Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

    const/4 v3, 0x2

    .line 39
    new-array v3, v3, [Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;->$VALUES:[Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;
    .locals 1

    .line 39
    const-class v0, Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;
    .locals 1

    .line 39
    sget-object v0, Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;->$VALUES:[Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

    invoke-virtual {v0}, [Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/util/json/JsonUtils$JsonEngine;

    return-object v0
.end method
