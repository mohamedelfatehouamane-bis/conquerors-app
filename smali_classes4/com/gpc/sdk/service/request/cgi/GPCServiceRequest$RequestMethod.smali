.class public final enum Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

.field public static final enum GET:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

.field public static final enum PATCH:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

.field public static final enum POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

.field public static final enum PUT:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

.field public static final enum UPDATE:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;
    .locals 3

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    sget-object v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->GET:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->UPDATE:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->PUT:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->PATCH:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    new-instance v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    const-string v1, "GET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->GET:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    new-instance v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    const-string v1, "UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->UPDATE:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    new-instance v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    const-string v1, "PUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->PUT:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    new-instance v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    const-string v1, "PATCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->PATCH:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 2
    invoke-static {}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->$values()[Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->$VALUES:[Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->$VALUES:[Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    invoke-virtual {v0}, [Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    return-object v0
.end method
