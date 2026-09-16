.class final Lcom/google/android/gms/internal/games_v2/zzic;
.super Lcom/google/android/gms/internal/games_v2/zzhk;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/games_v2/zzhg;

.field private final transient zzb:Lcom/google/android/gms/internal/games_v2/zzhd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games_v2/zzhg;Lcom/google/android/gms/internal/games_v2/zzhd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzhk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzic;->zza:Lcom/google/android/gms/internal/games_v2/zzhg;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzic;->zzb:Lcom/google/android/gms/internal/games_v2/zzhd;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzic;->zza:Lcom/google/android/gms/internal/games_v2/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzhg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzic;->zzb:Lcom/google/android/gms/internal/games_v2/zzhd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzl(I)Lcom/google/android/gms/internal/games_v2/zzim;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzic;->zza:Lcom/google/android/gms/internal/games_v2/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhg;->size()I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/games_v2/zzil;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzic;->zzb:Lcom/google/android/gms/internal/games_v2/zzhd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzl(I)Lcom/google/android/gms/internal/games_v2/zzim;

    move-result-object v0

    return-object v0
.end method

.method final zze([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzic;->zzb:Lcom/google/android/gms/internal/games_v2/zzhd;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/games_v2/zzgy;->zze([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
