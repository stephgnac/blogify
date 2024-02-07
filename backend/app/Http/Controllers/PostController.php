<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $post = Post::orderBy('created_at', 'desc')->get();

        return view('blog', compact('articles'));
    }

    public function create()
    {
        return view('articles.create');
    }

    public function store(Request $request)
    {
        //
        $request->validate([
            
            'title' => ['required', 'string', 'max:255'],
            'content' => ['required', 'string'],
        ]);
        
       
        $post = Post::create([

            'title' => $request->title,
            'content' => $request->content,
            'create_at' => date('l j F'),
        ]);
        
        return redirect()->route('dashboard')->with('success', 'Article publié avec succès!');
    }

    public function edit(string $id)
    {
        return view('articles.edit', compact('article'));
    }

    public function update(Request $request)
    {
        
        return redirect()->route('home')->with('success', 'Article mis à jour avec succès!');
    }
}
