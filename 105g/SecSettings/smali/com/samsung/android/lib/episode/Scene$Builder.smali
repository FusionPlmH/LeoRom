.class public Lcom/samsung/android/lib/episode/Scene$Builder;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/episode/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Builder"

    iput-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mKey:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;I)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object v1

    return-object v1
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Builder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the value of the attribite ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") will be replaced with a new one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/episode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Builder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/episode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/samsung/android/lib/episode/Scene;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/lib/episode/Scene;

    iget-object v1, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/lib/episode/Scene;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Builder"

    const-string/jumbo v1, "the element value will be replaced with a new one"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/episode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Builder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/episode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/episode/Scene$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
