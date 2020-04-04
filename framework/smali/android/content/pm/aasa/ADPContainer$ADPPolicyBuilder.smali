.class public Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
.super Ljava/lang/Object;
.source "ADPContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/aasa/ADPContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADPPolicyBuilder"
.end annotation


# instance fields
.field private carrier:Ljava/lang/String;

.field private contact:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private hashCode:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field private rp:Ljava/lang/String;

.field private sep_ver:Ljava/lang/String;

.field private versionType:I

.field private wipe:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->versionType:I

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->contact:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->wipe:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->rp:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->product:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->model:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->carrier:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->sep_ver:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createADPPolicy()Landroid/content/pm/aasa/ADPContainer$ADPPolicy;
    .locals 14

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->versionType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    iget-object v3, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    iget v5, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->versionType:I

    iget-object v6, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->contact:Ljava/lang/String;

    iget-object v7, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    iget-object v8, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->wipe:Ljava/lang/String;

    iget-object v9, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->rp:Ljava/lang/String;

    iget-object v10, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->product:Ljava/lang/String;

    iget-object v11, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->model:Ljava/lang/String;

    iget-object v12, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->carrier:Ljava/lang/String;

    iget-object v13, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->sep_ver:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public flush()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->versionType:I

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->contact:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->wipe:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->rp:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->product:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->model:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->carrier:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->sep_ver:Ljava/lang/String;

    return-void
.end method

.method public set_carrier(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->carrier:Ljava/lang/String;

    return-object p0
.end method

.method public set_contact(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->contact:Ljava/lang/String;

    return-object p0
.end method

.method public set_format(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    return-object p0
.end method

.method public set_hashCode(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    return-object p0
.end method

.method public set_model(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->model:Ljava/lang/String;

    return-object p0
.end method

.method public set_pattern(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public set_product(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->product:Ljava/lang/String;

    return-object p0
.end method

.method public set_rp(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->rp:Ljava/lang/String;

    return-object p0
.end method

.method public set_sep_ver(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->sep_ver:Ljava/lang/String;

    return-object p0
.end method

.method public set_versionType(I)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->versionType:I

    return-object p0
.end method

.method public set_wipe(Ljava/lang/String;)Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicyBuilder;->wipe:Ljava/lang/String;

    return-object p0
.end method
