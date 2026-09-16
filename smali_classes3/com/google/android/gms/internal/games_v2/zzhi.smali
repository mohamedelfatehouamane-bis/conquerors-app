.class public final Lcom/google/android/gms/internal/games_v2/zzhi;
.super Lcom/google/android/gms/internal/games_v2/zzfz;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/games_v2/zzhi;

.field private static final zzc:Lcom/google/android/gms/internal/games_v2/zzhi;


# instance fields
.field private final transient zzd:Lcom/google/android/gms/internal/games_v2/zzhd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhi;

    sget v1, Lcom/google/android/gms/internal/games_v2/zzhd;->zzd:I

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzhz;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzhi;-><init>(Lcom/google/android/gms/internal/games_v2/zzhd;)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzhi;->zzb:Lcom/google/android/gms/internal/games_v2/zzhi;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhi;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzhw;->zza()Lcom/google/android/gms/internal/games_v2/zzhw;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzhd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzhi;-><init>(Lcom/google/android/gms/internal/games_v2/zzhd;)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzhi;->zzc:Lcom/google/android/gms/internal/games_v2/zzhi;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/games_v2/zzhd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzfz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzhi;->zzd:Lcom/google/android/gms/internal/games_v2/zzhd;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/games_v2/zzhi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzhi;->zzb:Lcom/google/android/gms/internal/games_v2/zzhi;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/games_v2/zzhi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzhi;->zzc:Lcom/google/android/gms/internal/games_v2/zzhi;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzc()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhi;->zzd:Lcom/google/android/gms/internal/games_v2/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzif;->zza:Lcom/google/android/gms/internal/games_v2/zzif;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzig;

    sget v2, Lcom/google/android/gms/internal/games_v2/zzhw;->zzc:I

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzhv;->zza:Lcom/google/android/gms/internal/games_v2/zzht;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/games_v2/zzig;-><init>(Lcom/google/android/gms/internal/games_v2/zzhd;Ljava/util/Comparator;)V

    return-object v1
.end method
