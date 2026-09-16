.class final synthetic Lcom/google/android/gms/internal/games_v2/zzgj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzgj;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzgj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzgj;->zza:Lcom/google/android/gms/internal/games_v2/zzgj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzhj;

    .line 4
    iget v0, p1, Lcom/google/android/gms/internal/games_v2/zzhj;->zzb:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/games_v2/zzhj;->zza:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/games_v2/zzhk;->zzj(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzhk;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhk;->size()I

    move-result v2

    iput v2, p1, Lcom/google/android/gms/internal/games_v2/zzhj;->zzb:I

    iput-boolean v1, p1, Lcom/google/android/gms/internal/games_v2/zzhj;->zzc:Z

    return-object v0

    .line 1
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/games_v2/zzhj;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzii;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzii;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/games_v2/zzif;->zza:Lcom/google/android/gms/internal/games_v2/zzif;

    return-object p1
.end method
