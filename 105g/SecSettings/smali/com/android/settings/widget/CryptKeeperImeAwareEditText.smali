.class public Lcom/android/settings/widget/CryptKeeperImeAwareEditText;
.super Lcom/android/settings/widget/ImeAwareEditText;
.source "CryptKeeperImeAwareEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/ImeAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settings/widget/CryptKeeperImeAwareEditText;->blockContextMenu()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ImeAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settings/widget/CryptKeeperImeAwareEditText;->blockContextMenu()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/ImeAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/settings/widget/CryptKeeperImeAwareEditText;->blockContextMenu()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/ImeAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/settings/widget/CryptKeeperImeAwareEditText;->blockContextMenu()V

    return-void
.end method

.method private blockContextMenu()V
    .locals 1

    new-instance v0, Lcom/android/settings/widget/CryptKeeperImeAwareEditText$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/CryptKeeperImeAwareEditText$1;-><init>(Lcom/android/settings/widget/CryptKeeperImeAwareEditText;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/CryptKeeperImeAwareEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method private setInsertionDisabled()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mEditor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android.widget.Editor"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mInsertionControllerEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/CryptKeeperImeAwareEditText;->setInsertionDisabled()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/widget/ImeAwareEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
