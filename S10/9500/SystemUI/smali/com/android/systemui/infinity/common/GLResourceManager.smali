.class public Lcom/android/systemui/infinity/common/GLResourceManager;
.super Ljava/lang/Object;
.source "GLResourceManager.java"


# static fields
.field static instance:Lcom/android/systemui/infinity/common/GLResourceManager;


# instance fields
.field context:Landroid/content/Context;

.field programMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field textureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->textureMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->programMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->context:Landroid/content/Context;

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadProgram(II)I
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->programMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->programMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/infinity/common/TextResourceReader;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->context:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/systemui/infinity/common/TextResourceReader;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/systemui/infinity/common/ShaderHelper;->compileVertexShader(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lcom/android/systemui/infinity/common/ShaderHelper;->compileFragmentShader(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/infinity/common/ShaderHelper;->linkProgram(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->programMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v5
.end method

.method public loadTexture(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->textureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->textureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/infinity/common/TextureHelper;->loadTexture(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->textureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->textureMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/infinity/common/GLResourceManager;->programMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
