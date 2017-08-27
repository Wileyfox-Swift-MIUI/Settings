.class final Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/android/settings/search/a;
.source "InputMethodAndLanguageSettings.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Z)Ljava/util/List;
    .locals 14

    .prologue
    .line 759
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 761
    const v0, 0x7f0a05df

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 764
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 765
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->bL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 766
    new-instance v1, Lcom/android/settings/search/p;

    invoke-direct {v1, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 767
    const-string v2, "phone_language"

    iput-object v2, v1, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 768
    const v2, 0x7f0a05e2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 769
    iput-object v0, v1, Lcom/android/settings/search/p;->Wa:Ljava/lang/String;

    .line 770
    iput-object v0, v1, Lcom/android/settings/search/p;->Wb:Ljava/lang/String;

    .line 771
    iput-object v7, v1, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 772
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_0
    new-instance v0, Lcom/android/settings/search/p;

    invoke-direct {v0, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 777
    const-string v1, "spellcheckers_settings"

    iput-object v1, v0, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 778
    const v1, 0x7f0a0911

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 779
    iput-object v7, v0, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 780
    const v1, 0x7f0a09fb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->arB:Ljava/lang/String;

    .line 781
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->bQ(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 785
    new-instance v0, Lcom/android/settings/search/p;

    invoke-direct {v0, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 786
    const-string v1, "user_dict_settings"

    iput-object v1, v0, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 787
    const v1, 0x7f0a05fb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 788
    iput-object v7, v0, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 789
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_1
    new-instance v0, Lcom/android/settings/search/p;

    invoke-direct {v0, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 794
    const-string v1, "keyboard_settings"

    iput-object v1, v0, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 795
    const v1, 0x7f0a05e1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 796
    iput-object v7, v0, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 797
    const v1, 0x7f0a0a09

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->arB:Ljava/lang/String;

    .line 798
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->bM(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->rY()V

    .line 805
    invoke-virtual {v1, p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->bN(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    new-instance v2, Lcom/android/settings/search/p;

    invoke-direct {v2, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 807
    const-string v3, "current_input_method"

    iput-object v3, v2, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 808
    const v3, 0x7f0a0613

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 809
    iput-object v0, v2, Lcom/android/settings/search/p;->Wa:Ljava/lang/String;

    .line 810
    iput-object v0, v2, Lcom/android/settings/search/p;->Wb:Ljava/lang/String;

    .line 811
    iput-object v7, v2, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 812
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 818
    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v8

    .line 819
    if-nez v8, :cond_3

    const/4 v1, 0x0

    move v3, v1

    .line 820
    :goto_0
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_5

    .line 821
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 823
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v10

    .line 826
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 827
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v11, :cond_4

    .line 828
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 829
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 830
    const/16 v12, 0x2c

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    :cond_2
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1, v12, v13}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 835
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 827
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 819
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    goto :goto_0

    .line 837
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 839
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 840
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v4, Lcom/android/settings/search/p;

    invoke-direct {v4, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 844
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 845
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 846
    iput-object v2, v4, Lcom/android/settings/search/p;->Wa:Ljava/lang/String;

    .line 847
    iput-object v2, v4, Lcom/android/settings/search/p;->Wb:Ljava/lang/String;

    .line 848
    iput-object v7, v4, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 849
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 853
    :cond_5
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 855
    const/4 v2, 0x0

    .line 857
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v4

    .line 858
    const/4 v1, 0x0

    :goto_3
    array-length v3, v4

    if-ge v1, v3, :cond_a

    .line 859
    aget v3, v4, v1

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 860
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v5}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v3

    if-nez v3, :cond_7

    .line 858
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 864
    :cond_7
    const/4 v3, 0x1

    .line 866
    invoke-virtual {v5}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v2

    .line 867
    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 869
    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 873
    :goto_5
    if-eqz v2, :cond_9

    .line 874
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v2

    .line 879
    :goto_6
    new-instance v8, Lcom/android/settings/search/p;

    invoke-direct {v8, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 880
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 881
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 882
    iput-object v2, v8, Lcom/android/settings/search/p;->Wa:Ljava/lang/String;

    .line 883
    iput-object v2, v8, Lcom/android/settings/search/p;->Wb:Ljava/lang/String;

    .line 884
    iput-object v7, v8, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 885
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_4

    .line 869
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 876
    :cond_9
    const v2, 0x7f0a05f9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 888
    :cond_a
    if-eqz v2, :cond_b

    .line 890
    new-instance v0, Lcom/android/settings/search/p;

    invoke-direct {v0, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 891
    const-string v1, "builtin_keyboard_settings"

    iput-object v1, v0, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 892
    const v1, 0x7f0a0620

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 894
    iput-object v7, v0, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 895
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    :cond_b
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-direct {v0, p1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 900
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 901
    new-instance v0, Lcom/android/settings/search/p;

    invoke-direct {v0, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 902
    const-string v1, "tts_settings"

    iput-object v1, v0, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 903
    const v1, 0x7f0a0772

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 904
    iput-object v7, v0, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 905
    const v1, 0x7f0a09fd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->arB:Ljava/lang/String;

    .line 906
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_c
    new-instance v0, Lcom/android/settings/search/p;

    invoke-direct {v0, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 911
    const-string v1, "pointer_settings_category"

    iput-object v1, v0, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 912
    const v1, 0x7f0a05f1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 913
    iput-object v7, v0, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 914
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v0, Lcom/android/settings/search/p;

    invoke-direct {v0, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 917
    const-string v1, "pointer_speed"

    iput-object v1, v0, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 918
    const v1, 0x7f0a05f2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 919
    iput-object v7, v0, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 920
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->oo()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 924
    new-instance v0, Lcom/android/settings/search/p;

    invoke-direct {v0, p1}, Lcom/android/settings/search/p;-><init>(Landroid/content/Context;)V

    .line 925
    const-string v1, "vibrate_input_devices"

    iput-object v1, v0, Lcom/android/settings/search/p;->key:Ljava/lang/String;

    .line 926
    const v1, 0x7f0a05f4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->title:Ljava/lang/String;

    .line 927
    const v1, 0x7f0a05f5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->Wa:Ljava/lang/String;

    .line 928
    const v1, 0x7f0a05f5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/p;->Wb:Ljava/lang/String;

    .line 929
    iput-object v7, v0, Lcom/android/settings/search/p;->arC:Ljava/lang/String;

    .line 930
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_d
    return-object v6
.end method
