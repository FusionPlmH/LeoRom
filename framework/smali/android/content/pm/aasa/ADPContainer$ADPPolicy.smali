.class public Landroid/content/pm/aasa/ADPContainer$ADPPolicy;
.super Ljava/lang/Object;
.source "ADPContainer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/aasa/ADPContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADPPolicy"
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    iput p3, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->versionType:I

    iput-object p4, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->contact:Ljava/lang/String;

    iput-object p5, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    iput-object p6, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->wipe:Ljava/lang/String;

    iput-object p7, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->rp:Ljava/lang/String;

    iput-object p8, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->product:Ljava/lang/String;

    iput-object p9, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->model:Ljava/lang/String;

    iput-object p10, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->carrier:Ljava/lang/String;

    iput-object p11, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->sep_ver:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    iget v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->versionType:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const v4, 0x65837583

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v4, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/content/pm/aasa/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    iget v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->versionType:I

    iget-object v4, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/content/pm/aasa/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    return v3
.end method

.method public findMatcherByHashCode(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method public findMatcherByPattern(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method generateADPrule(I)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x65837583

    if-ne p1, v1, :cond_0

    const-string v1, "format"

    iget-object v2, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "pattern"

    iget-object v2, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "versionType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hashCode"

    iget-object v2, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->wipe:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "wipe"

    iget-object v2, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->wipe:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->rp:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "rp"

    iget-object v2, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->rp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->product:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "product"

    iget-object v2, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->product:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->model:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "model"

    iget-object v2, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->carrier:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "carrier"

    iget-object v2, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->sep_ver:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "sep"

    iget-object v2, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->sep_ver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getHashCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getRP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->rp:Ljava/lang/String;

    return-object v0
.end method

.method public getSepVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->sep_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionType()I
    .locals 1

    iget v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->versionType:I

    return v0
.end method

.method public getWipe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/aasa/ADPContainer$ADPPolicy;->wipe:Ljava/lang/String;

    return-object v0
.end method
