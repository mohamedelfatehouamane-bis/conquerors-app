.class public final Lcom/gpc/operations/migrate/bean/EasternStandardTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/bean/EasternStandardTime$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/operations/migrate/bean/EasternStandardTime$Companion;

.field private static final DATE_FORMAT_WITHOUT_SECOND:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMAT_WITH_SECOND:Ljava/text/SimpleDateFormat;

.field private static final FORMAT_WITHOUT_SECOND:Ljava/lang/String;

.field private static final FORMAT_WITH_SECOND:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dateValue:Ljava/util/Date;

.field private stringValue:Ljava/lang/String;

.field private timestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/migrate/bean/EasternStandardTime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->Companion:Lcom/gpc/operations/migrate/bean/EasternStandardTime$Companion;

    .line 1
    const-string v0, "EasternStandardTime"

    sput-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->TAG:Ljava/lang/String;

    .line 2
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->FORMAT_WITH_SECOND:Ljava/lang/String;

    .line 3
    const-string v1, "yyyy-MM-dd HH:mm"

    sput-object v1, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->FORMAT_WITHOUT_SECOND:Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->DATE_FORMAT_WITH_SECOND:Ljava/text/SimpleDateFormat;

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->DATE_FORMAT_WITHOUT_SECOND:Ljava/text/SimpleDateFormat;

    .line 8
    const-string v1, "GMT-5:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 9
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDATE_FORMAT_WITHOUT_SECOND$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->DATE_FORMAT_WITHOUT_SECOND:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static final synthetic access$getDATE_FORMAT_WITH_SECOND$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->DATE_FORMAT_WITH_SECOND:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static final synthetic access$getFORMAT_WITHOUT_SECOND$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->FORMAT_WITHOUT_SECOND:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFORMAT_WITH_SECOND$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->FORMAT_WITH_SECOND:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final generatorDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->DATE_FORMAT_WITH_SECOND:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    :try_start_1
    sget-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->DATE_FORMAT_WITHOUT_SECOND:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 6
    sget-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please checking date format is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->FORMAT_WITH_SECOND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->FORMAT_WITHOUT_SECOND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final getTimestampOfSecond(Ljava/util/Date;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/16 p1, 0x3e8

    int-to-long v2, p1

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final getDateValue()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->dateValue:Ljava/util/Date;

    return-object v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final initFromString(Ljava/lang/String;)V
    .locals 2

    const-string v0, "dateStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->generatorDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestampOfSecond(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->timestamp:Ljava/lang/Long;

    .line 4
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->dateValue:Ljava/util/Date;

    .line 5
    sget-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->DATE_FORMAT_WITH_SECOND:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->stringValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final initFromString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Please checking date format is "

    const-string v1, "dateStr"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dateFormatStr"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->getTimestampOfSecond(Ljava/util/Date;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->timestamp:Ljava/lang/Long;

    .line 10
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->dateValue:Ljava/util/Date;

    .line 11
    sget-object v1, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->DATE_FORMAT_WITH_SECOND:Ljava/text/SimpleDateFormat;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->stringValue:Ljava/lang/String;

    return-void

    .line 13
    :cond_0
    sget-object p1, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".format is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    sget-object v0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Please checking "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is valid."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 21
    sget-object v1, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final initWithTimestampOfSecond(J)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->timestamp:Ljava/lang/Long;

    .line 2
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x3e8

    int-to-long v1, v1

    mul-long p1, p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->dateValue:Ljava/util/Date;

    .line 3
    sget-object p1, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->DATE_FORMAT_WITH_SECOND:Ljava/text/SimpleDateFormat;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EasternStandardTime(timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->dateValue:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stringValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/bean/EasternStandardTime;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
