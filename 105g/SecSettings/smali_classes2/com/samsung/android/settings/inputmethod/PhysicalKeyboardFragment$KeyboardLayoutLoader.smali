.class final Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;
.super Landroid/content/AsyncTaskLoader;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHardKeyboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->mHardKeyboards:Ljava/util/List;

    return-void
.end method

.method private loadInBackground(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2, v7, v4, v6}, Landroid/hardware/input/InputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    invoke-direct {v8, v4, v6, v7}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/hardware/input/KeyboardLayout;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    const-string v9, "keyboard"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    iget-object v9, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2, v9, v4, v8}, Landroid/hardware/input/InputManager;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    invoke-direct {v10, v4, v8, v9}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/hardware/input/KeyboardLayout;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    new-instance v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;-><init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;Ljava/util/ArrayList;)V

    return-object v3
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->mHardKeyboards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->mHardKeyboards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->loadInBackground(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;->cancelLoad()Z

    return-void
.end method
