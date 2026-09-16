.class public final enum Lcom/gpc/aws/RequestClientOptions$Marker;
.super Ljava/lang/Enum;
.source "RequestClientOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/RequestClientOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Marker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/RequestClientOptions$Marker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/RequestClientOptions$Marker;

.field public static final enum USER_AGENT:Lcom/gpc/aws/RequestClientOptions$Marker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/gpc/aws/RequestClientOptions$Marker;

    const-string v1, "USER_AGENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/aws/RequestClientOptions$Marker;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/aws/RequestClientOptions$Marker;->USER_AGENT:Lcom/gpc/aws/RequestClientOptions$Marker;

    const/4 v1, 0x1

    .line 39
    new-array v1, v1, [Lcom/gpc/aws/RequestClientOptions$Marker;

    aput-object v0, v1, v2

    sput-object v1, Lcom/gpc/aws/RequestClientOptions$Marker;->$VALUES:[Lcom/gpc/aws/RequestClientOptions$Marker;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/RequestClientOptions$Marker;
    .locals 1

    .line 39
    const-class v0, Lcom/gpc/aws/RequestClientOptions$Marker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/RequestClientOptions$Marker;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/RequestClientOptions$Marker;
    .locals 1

    .line 39
    sget-object v0, Lcom/gpc/aws/RequestClientOptions$Marker;->$VALUES:[Lcom/gpc/aws/RequestClientOptions$Marker;

    invoke-virtual {v0}, [Lcom/gpc/aws/RequestClientOptions$Marker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/RequestClientOptions$Marker;

    return-object v0
.end method
