.class public Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;
.super Lcom/gpc/operations/migrate/utils/modules/matcher/BaseURLMatcher;
.source "SourceFile"


# instance fields
.field private domain:Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;

.field private subdomain:Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/migrate/utils/modules/matcher/BaseURLMatcher;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;->subdomain:Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;

    .line 3
    iput-object p2, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;->domain:Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;

    return-void
.end method


# virtual methods
.method public domain()Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;->domain:Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;

    return-object v0
.end method

.method public scheme()Lcom/gpc/operations/migrate/utils/modules/matcher/scheme/IURLScheme;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/matcher/scheme/HTTPSScheme;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/modules/matcher/scheme/HTTPSScheme;-><init>()V

    return-object v0
.end method

.method public service()Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;->subdomain:Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;

    return-object v0
.end method
