.class public Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
.super Ljava/lang/Object;
.source "SmartClipDataElementImpl.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;


# static fields
.field protected static final TAG:Ljava/lang/String; = "SmartClipDataElementImpl"


# instance fields
.field protected mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected mId:I

.field protected mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected mRectOnScreen:Landroid/graphics/Rect;

.field protected mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

.field public mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method private setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method private setParent(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method private setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v1, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v1, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    return v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v1, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v1, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    nop

    return v3

    :cond_2
    return v0
.end method

.method public addTag(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->isValidMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    return v2

    :cond_2
    return v0
.end method

.method public clearMetaData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V

    return-void
.end method

.method public createChildInstance()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->newInstance()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return-object v0
.end method

.method public dump()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartClipDataElementImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->dump()Z

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getAllTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getDataRepository()Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-object v0
.end method

.method public getDumpString(ZZ)Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParentCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    move-object v4, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v4

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Rect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mRectOnScreen(NULL)\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    if-ltz v4, :cond_3

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_2

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v6

    if-ne v6, v3, :cond_4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x2

    if-eq v6, v7, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Opacity BG("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v4

    nop

    :goto_4
    if-ge v2, v4, :cond_9

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v5, v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v5}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    if-nez v7, :cond_5

    new-instance v9, Ljava/lang/String;

    const-string/jumbo v10, "null"

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    :cond_5
    instance-of v9, v5, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    if-eqz v9, :cond_7

    move-object v9, v5

    check-cast v9, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    invoke-virtual {v9}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getExtraData()[B

    move-result-object v10

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", Extra data size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getExtraData()[B

    move-result-object v11

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_6
    invoke-virtual {v9}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v10

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", Extra parcelable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_7
    if-ne p2, v3, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_9
    goto :goto_6

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "No meta tag\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0
.end method

.method public getExtractionLevel()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getSmartClipDataCropper()Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getExtractionLevel()I

    move-result v1

    return v1
.end method

.method public getExtractionMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getSmartClipDataCropper()Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getExtractionMode()I

    move-result v1

    return v1
.end method

.method public getFirstChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getLastChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getMetaAreaRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getParentCount()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public getTagTable()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    return-object v0
.end method

.method public getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->getMetaTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isEmptyTag(Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v2

    if-lez v2, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v3}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v3

    if-lez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method public newInstance()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;
    .locals 2

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-direct {v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    return-object v0
.end method

.method public removeChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    if-eq v2, p0, :cond_1

    const-string v2, "SmartClipDataElementImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeChild : Incorrect parent of SemSmartClipDataElement. element="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->dump()Z

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-ne v0, v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-ne v0, v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public removeTags(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->removeMetaTags(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendSuspendedExtractionData()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDataRepository()Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getSmartClipDataCropper()Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public setDataRepository(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-void
.end method

.method public setMetaAreaRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->removeMetaTags(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :cond_2
    return v0
.end method

.method public setTagTable(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0

    :cond_2
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    iget-object v2, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eq v2, p1, :cond_4

    :cond_3
    iget-object v1, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0

    :cond_5
    return-object v0
.end method
