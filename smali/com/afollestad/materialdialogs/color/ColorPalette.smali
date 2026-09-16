.class Lcom/afollestad/materialdialogs/color/ColorPalette;
.super Ljava/lang/Object;
.source "ColorPalette.java"


# static fields
.field static final ACCENT_COLORS:[I

.field static final ACCENT_COLORS_SUB:[[I

.field static final PRIMARY_COLORS:[I

.field static final PRIMARY_COLORS_SUB:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 10
    const-string v0, "#F44336"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 11
    const-string v20, "#E91E63"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 12
    const-string v21, "#9C27B0"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 13
    const-string v22, "#673AB7"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 14
    const-string v23, "#3F51B5"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 15
    const-string v24, "#2196F3"

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 16
    const-string v25, "#03A9F4"

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 17
    const-string v26, "#00BCD4"

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 18
    const-string v27, "#009688"

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 19
    const-string v28, "#4CAF50"

    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 20
    const-string v29, "#8BC34A"

    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 21
    const-string v30, "#CDDC39"

    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 22
    const-string v31, "#FFEB3B"

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 23
    const-string v32, "#FFC107"

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    .line 24
    const-string v33, "#FF9800"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    .line 25
    const-string v34, "#FF5722"

    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    .line 26
    const-string v35, "#795548"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    .line 27
    const-string v36, "#9E9E9E"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    .line 28
    const-string v37, "#607D8B"

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    filled-new-array/range {v1 .. v19}, [I

    move-result-object v1

    sput-object v1, Lcom/afollestad/materialdialogs/color/ColorPalette;->PRIMARY_COLORS:[I

    .line 31
    const-string v1, "#FFEBEE"

    .line 34
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v1, "#FFCDD2"

    .line 35
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v1, "#EF9A9A"

    .line 36
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v1, "#E57373"

    .line 37
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v1, "#EF5350"

    .line 38
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 39
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v0, "#E53935"

    .line 40
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v0, "#D32F2F"

    .line 41
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v0, "#C62828"

    .line 42
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v0, "#B71C1C"

    .line 43
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    filled-new-array/range {v2 .. v11}, [I

    move-result-object v0

    const-string v1, "#FCE4EC"

    .line 46
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v1, "#F8BBD0"

    .line 47
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v1, "#F48FB1"

    .line 48
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v1, "#F06292"

    .line 49
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v1, "#EC407A"

    .line 50
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 51
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v1, "#D81B60"

    .line 52
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v1, "#C2185B"

    .line 53
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v1, "#AD1457"

    .line 54
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v1, "#880E4F"

    .line 55
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    filled-new-array/range {v2 .. v11}, [I

    move-result-object v1

    const-string v2, "#F3E5F5"

    .line 58
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v2, "#E1BEE7"

    .line 59
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v2, "#CE93D8"

    .line 60
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v2, "#BA68C8"

    .line 61
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v2, "#AB47BC"

    .line 62
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 63
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v2, "#8E24AA"

    .line 64
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v2, "#7B1FA2"

    .line 65
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v2, "#6A1B9A"

    .line 66
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v2, "#4A148C"

    .line 67
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    filled-new-array/range {v3 .. v12}, [I

    move-result-object v2

    const-string v3, "#EDE7F6"

    .line 70
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v3, "#D1C4E9"

    .line 71
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v3, "#B39DDB"

    .line 72
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v3, "#9575CD"

    .line 73
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v3, "#7E57C2"

    .line 74
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 75
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v3, "#5E35B1"

    .line 76
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v3, "#512DA8"

    .line 77
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v3, "#4527A0"

    .line 78
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v3, "#311B92"

    .line 79
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    filled-new-array/range {v4 .. v13}, [I

    move-result-object v3

    const-string v4, "#E8EAF6"

    .line 82
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v4, "#C5CAE9"

    .line 83
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v4, "#9FA8DA"

    .line 84
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v4, "#7986CB"

    .line 85
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v4, "#5C6BC0"

    .line 86
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 87
    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v4, "#3949AB"

    .line 88
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v4, "#303F9F"

    .line 89
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v4, "#283593"

    .line 90
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v4, "#1A237E"

    .line 91
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    filled-new-array/range {v5 .. v14}, [I

    move-result-object v4

    const-string v5, "#E3F2FD"

    .line 94
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v5, "#BBDEFB"

    .line 95
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v5, "#90CAF9"

    .line 96
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v5, "#64B5F6"

    .line 97
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v5, "#42A5F5"

    .line 98
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 99
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v5, "#1E88E5"

    .line 100
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v5, "#1976D2"

    .line 101
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v5, "#1565C0"

    .line 102
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v5, "#0D47A1"

    .line 103
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    filled-new-array/range {v6 .. v15}, [I

    move-result-object v5

    const-string v6, "#E1F5FE"

    .line 106
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v6, "#B3E5FC"

    .line 107
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v6, "#81D4FA"

    .line 108
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v6, "#4FC3F7"

    .line 109
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v6, "#29B6F6"

    .line 110
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 111
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v6, "#039BE5"

    .line 112
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v6, "#0288D1"

    .line 113
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v6, "#0277BD"

    .line 114
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v6, "#01579B"

    .line 115
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    filled-new-array/range {v7 .. v16}, [I

    move-result-object v6

    const-string v7, "#E0F7FA"

    .line 118
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v7, "#B2EBF2"

    .line 119
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v7, "#80DEEA"

    .line 120
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v7, "#4DD0E1"

    .line 121
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v7, "#26C6DA"

    .line 122
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 123
    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v7, "#00ACC1"

    .line 124
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v7, "#0097A7"

    .line 125
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v7, "#00838F"

    .line 126
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v7, "#006064"

    .line 127
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    filled-new-array/range {v8 .. v17}, [I

    move-result-object v7

    const-string v8, "#E0F2F1"

    .line 130
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v8, "#B2DFDB"

    .line 131
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v8, "#80CBC4"

    .line 132
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v8, "#4DB6AC"

    .line 133
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v8, "#26A69A"

    .line 134
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 135
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v8, "#00897B"

    .line 136
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v8, "#00796B"

    .line 137
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v8, "#00695C"

    .line 138
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const-string v8, "#004D40"

    .line 139
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    filled-new-array/range {v9 .. v18}, [I

    move-result-object v8

    const-string v9, "#E8F5E9"

    .line 142
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v9, "#C8E6C9"

    .line 143
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v9, "#A5D6A7"

    .line 144
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v9, "#81C784"

    .line 145
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v9, "#66BB6A"

    .line 146
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    .line 147
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v9, "#43A047"

    .line 148
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v9, "#388E3C"

    .line 149
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const-string v9, "#2E7D32"

    .line 150
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v9, "#1B5E20"

    .line 151
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    filled-new-array/range {v10 .. v19}, [I

    move-result-object v9

    const-string v10, "#F1F8E9"

    .line 154
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v10, "#DCEDC8"

    .line 155
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v10, "#C5E1A5"

    .line 156
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v10, "#AED581"

    .line 157
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v10, "#9CCC65"

    .line 158
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    .line 159
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v10, "#7CB342"

    .line 160
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const-string v10, "#689F38"

    .line 161
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v10, "#558B2F"

    .line 162
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v10, "#33691E"

    .line 163
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    filled-new-array/range {v11 .. v20}, [I

    move-result-object v10

    const-string v11, "#F9FBE7"

    .line 166
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v11, "#F0F4C3"

    .line 167
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v11, "#E6EE9C"

    .line 168
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v11, "#DCE775"

    .line 169
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v11, "#D4E157"

    .line 170
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    .line 171
    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const-string v11, "#C0CA33"

    .line 172
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v11, "#AFB42B"

    .line 173
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v11, "#9E9D24"

    .line 174
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v11, "#827717"

    .line 175
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    filled-new-array/range {v12 .. v21}, [I

    move-result-object v11

    const-string v12, "#FFFDE7"

    .line 178
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v12, "#FFF9C4"

    .line 179
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v12, "#FFF59D"

    .line 180
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v12, "#FFF176"

    .line 181
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v12, "#FFEE58"

    .line 182
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    .line 183
    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v12, "#FDD835"

    .line 184
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v12, "#FBC02D"

    .line 185
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v12, "#F9A825"

    .line 186
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const-string v12, "#F57F17"

    .line 187
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    filled-new-array/range {v13 .. v22}, [I

    move-result-object v12

    const-string v13, "#FFF8E1"

    .line 190
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v13, "#FFECB3"

    .line 191
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v13, "#FFE082"

    .line 192
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v13, "#FFD54F"

    .line 193
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const-string v13, "#FFCA28"

    .line 194
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    .line 195
    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v13, "#FFB300"

    .line 196
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v13, "#FFA000"

    .line 197
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const-string v13, "#FF8F00"

    .line 198
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    const-string v13, "#FF6F00"

    .line 199
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    filled-new-array/range {v14 .. v23}, [I

    move-result-object v13

    const-string v14, "#FFF3E0"

    .line 202
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v14, "#FFE0B2"

    .line 203
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v14, "#FFCC80"

    .line 204
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const-string v14, "#FFB74D"

    .line 205
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v14, "#FFA726"

    .line 206
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    .line 207
    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v14, "#FB8C00"

    .line 208
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const-string v14, "#F57C00"

    .line 209
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    const-string v14, "#EF6C00"

    .line 210
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    const-string v14, "#E65100"

    .line 211
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    filled-new-array/range {v15 .. v24}, [I

    move-result-object v14

    const-string v15, "#FBE9E7"

    .line 214
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v15, "#FFCCBC"

    .line 215
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const-string v15, "#FFAB91"

    .line 216
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v15, "#FF8A65"

    .line 217
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v15, "#FF7043"

    .line 218
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    .line 219
    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const-string v15, "#F4511E"

    .line 220
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    const-string v15, "#E64A19"

    .line 221
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    const-string v15, "#D84315"

    .line 222
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    const-string v15, "#BF360C"

    .line 223
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    filled-new-array/range {v16 .. v25}, [I

    move-result-object v15

    const-string v16, "#EFEBE9"

    .line 226
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const-string v16, "#D7CCC8"

    .line 227
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v16, "#BCAAA4"

    .line 228
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v16, "#A1887F"

    .line 229
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v16, "#8D6E63"

    .line 230
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    .line 231
    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    const-string v16, "#6D4C41"

    .line 232
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    const-string v16, "#5D4037"

    .line 233
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    const-string v16, "#4E342E"

    .line 234
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    const-string v16, "#3E2723"

    .line 235
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    filled-new-array/range {v17 .. v26}, [I

    move-result-object v16

    const-string v17, "#FAFAFA"

    .line 238
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v17, "#F5F5F5"

    .line 239
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v17, "#EEEEEE"

    .line 240
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v17, "#E0E0E0"

    .line 241
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const-string v17, "#BDBDBD"

    .line 242
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    .line 243
    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    const-string v17, "#757575"

    .line 244
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    const-string v17, "#616161"

    .line 245
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    const-string v17, "#424242"

    .line 246
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    const-string v17, "#212121"

    .line 247
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    filled-new-array/range {v18 .. v27}, [I

    move-result-object v17

    const-string v18, "#ECEFF1"

    .line 250
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v18, "#CFD8DC"

    .line 251
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v18, "#B0BEC5"

    .line 252
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const-string v18, "#90A4AE"

    .line 253
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    const-string v18, "#78909C"

    .line 254
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    .line 255
    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    const-string v18, "#546E7A"

    .line 256
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    const-string v18, "#455A64"

    .line 257
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    const-string v18, "#37474F"

    .line 258
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    const-string v18, "#263238"

    .line 259
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    filled-new-array/range {v19 .. v28}, [I

    move-result-object v18

    move-object/from16 v19, v0

    const/16 v0, 0x13

    new-array v0, v0, [[I

    const/16 v20, 0x0

    aput-object v19, v0, v20

    const/16 v19, 0x1

    aput-object v1, v0, v19

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v2, 0x3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    aput-object v4, v0, v2

    const/4 v2, 0x5

    aput-object v5, v0, v2

    const/4 v2, 0x6

    aput-object v6, v0, v2

    const/4 v2, 0x7

    aput-object v7, v0, v2

    const/16 v2, 0x8

    aput-object v8, v0, v2

    const/16 v2, 0x9

    aput-object v9, v0, v2

    const/16 v2, 0xa

    aput-object v10, v0, v2

    const/16 v2, 0xb

    aput-object v11, v0, v2

    const/16 v2, 0xc

    aput-object v12, v0, v2

    const/16 v2, 0xd

    aput-object v13, v0, v2

    const/16 v2, 0xe

    aput-object v14, v0, v2

    const/16 v2, 0xf

    aput-object v15, v0, v2

    const/16 v2, 0x10

    aput-object v16, v0, v2

    const/16 v2, 0x11

    aput-object v17, v0, v2

    const/16 v2, 0x12

    aput-object v18, v0, v2

    sput-object v0, Lcom/afollestad/materialdialogs/color/ColorPalette;->PRIMARY_COLORS_SUB:[[I

    .line 263
    const-string v0, "#FF1744"

    .line 265
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v0, "#F50057"

    .line 266
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v0, "#D500F9"

    .line 267
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v0, "#651FFF"

    .line 268
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v0, "#3D5AFE"

    .line 269
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v0, "#2979FF"

    .line 270
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v0, "#00B0FF"

    .line 271
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v0, "#00E5FF"

    .line 272
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v0, "#1DE9B6"

    .line 273
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v0, "#00E676"

    .line 274
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v0, "#76FF03"

    .line 275
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v0, "#C6FF00"

    .line 276
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v0, "#FFEA00"

    .line 277
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v0, "#FFC400"

    .line 278
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v0, "#FF9100"

    .line 279
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    const-string v0, "#FF3D00"

    .line 280
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    filled-new-array/range {v2 .. v17}, [I

    move-result-object v0

    sput-object v0, Lcom/afollestad/materialdialogs/color/ColorPalette;->ACCENT_COLORS:[I

    .line 283
    const-string v0, "#FF8A80"

    .line 286
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v2, "#FF5252"

    .line 287
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#FF1744"

    .line 288
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#D50000"

    .line 289
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    filled-new-array {v0, v2, v3, v4}, [I

    move-result-object v0

    const-string v2, "#FF80AB"

    .line 292
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#FF4081"

    .line 293
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#F50057"

    .line 294
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#C51162"

    .line 295
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    const-string v3, "#EA80FC"

    .line 298
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#E040FB"

    .line 299
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#D500F9"

    .line 300
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "#AA00FF"

    .line 301
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v3

    const-string v4, "#B388FF"

    .line 304
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#7C4DFF"

    .line 305
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "#651FFF"

    .line 306
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "#6200EA"

    .line 307
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    filled-new-array {v4, v5, v6, v7}, [I

    move-result-object v4

    const-string v5, "#8C9EFF"

    .line 310
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "#536DFE"

    .line 311
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "#3D5AFE"

    .line 312
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v8, "#304FFE"

    .line 313
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    filled-new-array {v5, v6, v7, v8}, [I

    move-result-object v5

    const-string v6, "#82B1FF"

    .line 316
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "#448AFF"

    .line 317
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v8, "#2979FF"

    .line 318
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "#2962FF"

    .line 319
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    filled-new-array {v6, v7, v8, v9}, [I

    move-result-object v6

    const-string v7, "#80D8FF"

    .line 322
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v8, "#40C4FF"

    .line 323
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "#00B0FF"

    .line 324
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v10, "#0091EA"

    .line 325
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    filled-new-array {v7, v8, v9, v10}, [I

    move-result-object v7

    const-string v8, "#84FFFF"

    .line 328
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "#18FFFF"

    .line 329
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v10, "#00E5FF"

    .line 330
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v11, "#00B8D4"

    .line 331
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    filled-new-array {v8, v9, v10, v11}, [I

    move-result-object v8

    const-string v9, "#A7FFEB"

    .line 334
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v10, "#64FFDA"

    .line 335
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v11, "#1DE9B6"

    .line 336
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v12, "#00BFA5"

    .line 337
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    filled-new-array {v9, v10, v11, v12}, [I

    move-result-object v9

    const-string v10, "#B9F6CA"

    .line 340
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v11, "#69F0AE"

    .line 341
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v12, "#00E676"

    .line 342
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v13, "#00C853"

    .line 343
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    filled-new-array {v10, v11, v12, v13}, [I

    move-result-object v10

    const-string v11, "#CCFF90"

    .line 346
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v12, "#B2FF59"

    .line 347
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v13, "#76FF03"

    .line 348
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v14, "#64DD17"

    .line 349
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    filled-new-array {v11, v12, v13, v14}, [I

    move-result-object v11

    const-string v12, "#F4FF81"

    .line 352
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v13, "#EEFF41"

    .line 353
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v14, "#C6FF00"

    .line 354
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v15, "#AEEA00"

    .line 355
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    filled-new-array {v12, v13, v14, v15}, [I

    move-result-object v12

    const-string v13, "#FFFF8D"

    .line 358
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v14, "#FFFF00"

    .line 359
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v15, "#FFEA00"

    .line 360
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v16, "#FFD600"

    const/16 v17, 0x2

    .line 361
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    filled-new-array {v13, v14, v15, v1}, [I

    move-result-object v1

    const-string v13, "#FFE57F"

    .line 364
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v14, "#FFD740"

    .line 365
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v15, "#FFC400"

    .line 366
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v16, "#FFAB00"

    move-object/from16 v18, v0

    .line 367
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v13, v14, v15, v0}, [I

    move-result-object v0

    const-string v13, "#FFD180"

    .line 370
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v14, "#FFAB40"

    .line 371
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v15, "#FF9100"

    .line 372
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v16, "#FF6D00"

    move-object/from16 v21, v0

    .line 373
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v13, v14, v15, v0}, [I

    move-result-object v0

    const-string v13, "#FF9E80"

    .line 376
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v14, "#FF6E40"

    .line 377
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v15, "#FF3D00"

    .line 378
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v16, "#DD2C00"

    move-object/from16 v22, v0

    .line 379
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v13, v14, v15, v0}, [I

    move-result-object v0

    const/16 v13, 0x10

    new-array v13, v13, [[I

    aput-object v18, v13, v20

    aput-object v2, v13, v19

    aput-object v3, v13, v17

    const/4 v2, 0x3

    aput-object v4, v13, v2

    const/4 v2, 0x4

    aput-object v5, v13, v2

    const/4 v2, 0x5

    aput-object v6, v13, v2

    const/4 v2, 0x6

    aput-object v7, v13, v2

    const/4 v2, 0x7

    aput-object v8, v13, v2

    const/16 v2, 0x8

    aput-object v9, v13, v2

    const/16 v2, 0x9

    aput-object v10, v13, v2

    const/16 v2, 0xa

    aput-object v11, v13, v2

    const/16 v2, 0xb

    aput-object v12, v13, v2

    const/16 v2, 0xc

    aput-object v1, v13, v2

    const/16 v1, 0xd

    aput-object v21, v13, v1

    const/16 v1, 0xe

    aput-object v22, v13, v1

    const/16 v1, 0xf

    aput-object v0, v13, v1

    sput-object v13, Lcom/afollestad/materialdialogs/color/ColorPalette;->ACCENT_COLORS_SUB:[[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
