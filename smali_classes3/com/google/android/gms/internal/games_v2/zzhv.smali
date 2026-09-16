.class final Lcom/google/android/gms/internal/games_v2/zzhv;
.super Lcom/google/android/gms/internal/games_v2/zzht;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final zza:Lcom/google/android/gms/internal/games_v2/zzht;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzhv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzhv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzhv;->zza:Lcom/google/android/gms/internal/games_v2/zzht;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzht;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzhw;

    check-cast p2, Lcom/google/android/gms/internal/games_v2/zzhw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzc()Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    iget-object v2, p2, Lcom/google/android/gms/internal/games_v2/zzhw;->zza:Lcom/google/android/gms/internal/games_v2/zzgu;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/games_v2/zzgq;->zza(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    iget-object p2, p2, Lcom/google/android/gms/internal/games_v2/zzhw;->zzb:Lcom/google/android/gms/internal/games_v2/zzgu;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzgq;->zza(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzb()I

    move-result p1

    return p1
.end method
