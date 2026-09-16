.class final Lcom/google/android/gms/internal/measurement/zzkv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzly;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzle;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzku;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzku;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzle;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkw;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzle;

    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjs;->zza()Lcom/google/android/gms/internal/measurement/zzjs;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkv;->zza()Lcom/google/android/gms/internal/measurement/zzle;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkw;-><init>([Lcom/google/android/gms/internal/measurement/zzle;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkv;-><init>(Lcom/google/android/gms/internal/measurement/zzle;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzle;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzle;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzb:Lcom/google/android/gms/internal/measurement/zzle;

    return-void
.end method

.method private static zza()Lcom/google/android/gms/internal/measurement/zzle;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkv;->zza:Lcom/google/android/gms/internal/measurement/zzle;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzlf;)Z
    .locals 1

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkx;->zza:[I

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlf;->zzb()Lcom/google/android/gms/internal/measurement/zzls;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzls;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlz;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzlz<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzmb;->zza(Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkv;->zzb:Lcom/google/android/gms/internal/measurement/zzle;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzle;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlf;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzlf;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    const-class v0, Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Lcom/google/android/gms/internal/measurement/zzmu;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjl;->zzb()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzlf;->zza()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v1

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzln;->zza(Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzlh;)Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zza()Lcom/google/android/gms/internal/measurement/zzmu;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjl;->zza()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v0

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzlf;->zza()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzln;->zza(Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzlh;)Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Lcom/google/android/gms/internal/measurement/zzlf;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlr;->zzb()Lcom/google/android/gms/internal/measurement/zzlp;

    move-result-object v3

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzb()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v4

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Lcom/google/android/gms/internal/measurement/zzmu;

    move-result-object v5

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjl;->zzb()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v6

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Lcom/google/android/gms/internal/measurement/zzla;

    move-result-object v7

    move-object v1, p1

    .line 26
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzll;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlf;Lcom/google/android/gms/internal/measurement/zzlp;Lcom/google/android/gms/internal/measurement/zzkm;Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzla;)Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v1, p1

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlr;->zzb()Lcom/google/android/gms/internal/measurement/zzlp;

    move-result-object v3

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzb()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v4

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zzb()Lcom/google/android/gms/internal/measurement/zzmu;

    move-result-object v5

    const/4 v6, 0x0

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zzb()Lcom/google/android/gms/internal/measurement/zzla;

    move-result-object v7

    .line 32
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzll;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlf;Lcom/google/android/gms/internal/measurement/zzlp;Lcom/google/android/gms/internal/measurement/zzkm;Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzla;)Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object p1

    return-object p1

    :cond_3
    move-object v1, p1

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzkv;->zza(Lcom/google/android/gms/internal/measurement/zzlf;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlr;->zza()Lcom/google/android/gms/internal/measurement/zzlp;

    move-result-object v3

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zza()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v4

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zza()Lcom/google/android/gms/internal/measurement/zzmu;

    move-result-object v5

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjl;->zza()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v6

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zza()Lcom/google/android/gms/internal/measurement/zzla;

    move-result-object v7

    .line 41
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzll;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlf;Lcom/google/android/gms/internal/measurement/zzlp;Lcom/google/android/gms/internal/measurement/zzkm;Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzla;)Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object p1

    return-object p1

    .line 43
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlr;->zza()Lcom/google/android/gms/internal/measurement/zzlp;

    move-result-object v3

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zza()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v4

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmb;->zza()Lcom/google/android/gms/internal/measurement/zzmu;

    move-result-object v5

    const/4 v6, 0x0

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlc;->zza()Lcom/google/android/gms/internal/measurement/zzla;

    move-result-object v7

    .line 47
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzll;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzlf;Lcom/google/android/gms/internal/measurement/zzlp;Lcom/google/android/gms/internal/measurement/zzkm;Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzla;)Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object p1

    return-object p1
.end method
