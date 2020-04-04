.class Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private mHandleHeight:I

.field private final mSelectionBounds:Landroid/graphics/RectF;

.field private final mSelectionPath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Z)V
    .locals 2

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->access$100(Landroid/widget/MultiSelectPopupWindow$SelectionController;)Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->access$200(Landroid/widget/MultiSelectPopupWindow$SelectionController;)V

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->access$300(Landroid/widget/MultiSelectPopupWindow$SelectionController;)V

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    :cond_0
    nop

    invoke-static {p1}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {p1}, Landroid/widget/MultiSelectPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mHandleHeight:I

    :cond_1
    return-void
.end method

.method private populateMenuWithItems(Landroid/view/Menu;)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    const/4 v0, 0x0

    const v1, 0x10202e3

    const v2, 0x10401c5

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080b0a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v1, 0x2

    const v2, 0x10203c0

    const v3, 0x1040001

    invoke-interface {p1, v0, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080b0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow;->access$700(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const v1, 0x10203c2

    const/4 v3, 0x3

    const v4, 0x10409a3

    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080b16

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow;->access$800(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x10203c1

    const/4 v3, 0x4

    const v4, 0x10402b6

    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080b0e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v5}, Landroid/widget/MultiSelectPopupWindow;->access$900(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    iget-object v8, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.sec.android.app.translator"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.google.android.apps.translate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const v8, 0x10203c3

    const/4 v9, 0x5

    add-int/lit8 v10, v4, 0x1

    add-int/2addr v9, v4

    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v0, v8, v9, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080b17

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v4, v10

    :cond_3
    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateSelectAllItem(Landroid/view/Menu;)V
    .locals 6

    const v0, 0x10203bf

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$1000(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    const v5, 0x104000d

    invoke-interface {p1, v2, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1080b15

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->onMultiSelectMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    invoke-direct {p0, p2}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$002(Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$1100(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$1100(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    :cond_0
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10503e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "MultiSelectPopupWindow"

    const-string v4, "getTextFormultiSelection() text is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v5, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    :cond_2
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$600()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    int-to-float v6, v3

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    int-to-float v7, v4

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget-object v8, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v4

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0, p2}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method
