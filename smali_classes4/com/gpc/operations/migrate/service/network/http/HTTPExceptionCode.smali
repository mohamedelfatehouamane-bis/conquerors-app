.class public final enum Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

.field public static final enum CREATE_REQUEST_FAIL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

.field public static final enum INVALID_REQUEST_URL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

.field public static final enum REQUEST_METHOD_UNSUPPORT:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

.field public static final enum REQUEST_THROW_EXCEPTION_FAIL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

.field public static final enum REQUEST_THROW_RUNTIME_EXCEPTION_FAIL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;


# instance fields
.field private requestErrorCode:I


# direct methods
.method private static synthetic $values()[Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;
    .locals 3

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    sget-object v1, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->INVALID_REQUEST_URL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->CREATE_REQUEST_FAIL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->REQUEST_THROW_EXCEPTION_FAIL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->REQUEST_METHOD_UNSUPPORT:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->REQUEST_THROW_RUNTIME_EXCEPTION_FAIL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    const/4 v1, 0x0

    const/16 v2, 0x384

    const-string v3, "INVALID_REQUEST_URL"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->INVALID_REQUEST_URL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    .line 5
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    const/4 v1, 0x1

    const/16 v2, 0x385

    const-string v3, "CREATE_REQUEST_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->CREATE_REQUEST_FAIL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    .line 9
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    const/4 v1, 0x2

    const/16 v2, 0x386

    const-string v3, "REQUEST_THROW_EXCEPTION_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->REQUEST_THROW_EXCEPTION_FAIL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    .line 13
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    const/4 v1, 0x3

    const/16 v2, 0x387

    const-string v3, "REQUEST_METHOD_UNSUPPORT"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->REQUEST_METHOD_UNSUPPORT:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    .line 18
    new-instance v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    const/4 v1, 0x4

    const/16 v2, 0x388

    const-string v3, "REQUEST_THROW_RUNTIME_EXCEPTION_FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->REQUEST_THROW_RUNTIME_EXCEPTION_FAIL:Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    .line 19
    invoke-static {}, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->$values()[Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    move-result-object v0

    sput-object v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->$VALUES:[Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->requestErrorCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    return-object p0
.end method

.method public static values()[Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->$VALUES:[Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    invoke-virtual {v0}, [Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPExceptionCode;->requestErrorCode:I

    return v0
.end method
